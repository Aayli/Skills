#include "WheelsEncoders.h"
#include "math.h"


WheelsEncoders::WheelsEncoders(ros::NodeHandle* nh) : wheels_encoders_velocity()
{   
    driven_distance_absolute_m = 0.0;
    x_absolute_m = 0;
    y_absolute_m = 0;
    yaw_absolute_rad = 0;
    x_cov_prev = 0;
    y_cov_prev = 0;
    yaw_cov_prev = 0;
    loadSettings(nh);
    reset_ticks();
}

void WheelsEncoders::loadSettings(ros::NodeHandle* nh) 
{
    int ret = 0;

    ret += !nh->getParam("Bolid/wheels/diameter", wheels_diameter_m);
    ret += !nh->getParam("Bolid/wheels/track_width", track_width_m);
    ret += !nh->getParam("Bolid/wheels/tyre_deflation", tyre_deflaction);
    ret += !nh->getParam("Bolid/uncertainty/track_width", uncertainty_track_width_m);
    ret += !nh->getParam("Encoders/parameters/ticks_per_rotation", ticks_per_rotation);

    if(ret > 0)
        ROS_ERROR("[WheelsEncoders] Parameters loaded incorrectly! %d", ret);
    else
        ROS_INFO("[WheelsEncoders] Parameters loaded correctly");
}   

void WheelsEncoders::notification_ticks(std_msgs::Header header, int RR_ticks_delta, int RL_ticks_delta)
{
    RR_ticks += RR_ticks_delta;
    RL_ticks += RL_ticks_delta;
    lastNotificationTimeStamp = header.stamp;
}

void WheelsEncoders::reset_ticks()
{
    RR_ticks = 0;
    RL_ticks = 0;
}

float WheelsEncoders::get_driven_distance_from_ticks(uint8_t ticks)
{
    return (float(ticks) / float(ticks_per_rotation)) * M_PI * wheels_diameter_m * tyre_deflaction;
}

nav_msgs::Odometry WheelsEncoders::calculate_odometry()
{
    // Prepare date in meters
    float RR_distance = get_driven_distance_from_ticks(RR_ticks);
    float RL_distance = get_driven_distance_from_ticks(RL_ticks);
    float driven_distance_delta_m = (RR_distance + RL_distance) / 2.0;
    driven_distance_absolute_m += driven_distance_delta_m;

    // Odometry data
    float delta_yaw = (RR_distance - RL_distance) / track_width_m;
    yaw_absolute_rad += delta_yaw;
    float x_delta = driven_distance_delta_m*cos(yaw_absolute_rad);
    float y_delta = driven_distance_delta_m*sin(yaw_absolute_rad);
    x_absolute_m += x_delta;
    y_absolute_m += y_delta;

    // Covariance data
    float driven_distance_cov_actual = get_driven_distance_variance(1, 1);
    float x_cov_actual = get_x_variance(1, 1, uncertainty_track_width_m);
    float y_cov_actual = get_y_variance(1, 1, uncertainty_track_width_m);
    float yaw_cov_actual = get_yaw_variance(1, 1, uncertainty_track_width_m);
    float x_cov = x_cov_actual + x_cov_prev;
    float y_cov = y_cov_actual + y_cov_prev;
    float yaw_cov = yaw_cov_actual + yaw_cov_prev;

    // Header
    odometryMsg.header.stamp = lastNotificationTimeStamp;
    odometryMsg.header.frame_id = "odom";
    // Position
    odometryMsg.pose.pose.position.x = x_absolute_m;
    odometryMsg.pose.pose.position.y = y_absolute_m;
    odometryMsg.pose.pose.orientation.z = sin(yaw_absolute_rad/2);
    odometryMsg.pose.pose.orientation.w = cos(yaw_absolute_rad/2);
    odometryMsg.pose.covariance[0] = x_cov;
    odometryMsg.pose.covariance[7] = y_cov;
    odometryMsg.pose.covariance[35] = yaw_cov;
    // Velocity estimation
    VelocityEstimationData vel_est_data = VelocityEstimationData(lastNotificationTimeStamp, driven_distance_absolute_m, yaw_absolute_rad, driven_distance_cov_actual, yaw_cov_actual);
    wheels_encoders_velocity.updateData(vel_est_data);
    odometryMsg.twist = wheels_encoders_velocity.getTwistOdometryMsg();
    // Previous covariances
    x_cov_prev = x_cov;
    y_cov_prev = y_cov;
    yaw_cov_prev = yaw_cov;

    return odometryMsg;
}

float WheelsEncoders::get_driven_distance_variance(uint8_t uncertainity_RR_ticks, uint8_t uncertainity_RL_ticks)
{   
    float uncertainity_RR_m = get_driven_distance_from_ticks(uncertainity_RR_ticks)/sqrt(3);
    float uncertainity_RL_m = get_driven_distance_from_ticks(uncertainity_RL_ticks)/sqrt(3);
    // Derevative driven distance after RR & RL
    // driven distance = (RR_distance + RL_distance)/2
    float ddriven_dRR = 0.5;
    float ddriven_dRL = 0.5;

    return pow(ddriven_dRR*uncertainity_RR_m, 2) + pow(ddriven_dRL*uncertainity_RL_m, 2);
}

float WheelsEncoders::get_x_variance(uint8_t uncertainity_RR_ticks, uint8_t uncertainity_RL_ticks, float uncertainity_track_width_m)       
{
    float uncertainity_RR_m = get_driven_distance_from_ticks(uncertainity_RR_ticks)/sqrt(3);
    float uncertainity_RL_m = get_driven_distance_from_ticks(uncertainity_RL_ticks)/sqrt(3);
    float RR = get_driven_distance_from_ticks(RR_ticks);
    float RL = get_driven_distance_from_ticks(RL_ticks);
    float len = track_width_m;

    float dx_dRR = ((RR + RL)*sin((RL - RR)/len) + len*cos((RL - RR)/len)) / (2*len);
    float dx_dRL = ((RR + RL)*sin((RR - RL)/len) + len*cos((RL - RR)/len)) / (2*len);
    float dx_dlen = (RR - RL)*(RR + RL)*sin((RR - RL)/len) / (2*pow(len, 2));

    return pow(dx_dRR*uncertainity_RR_m, 2) + pow(dx_dRL*uncertainity_RL_m, 2) + pow(dx_dlen*uncertainity_track_width_m, 2);
}

float WheelsEncoders::get_y_variance(uint8_t uncertainity_RR_ticks, uint8_t uncertainity_RL_ticks, float uncertainity_track_width_m)
{
    float uncertainity_RR_m = get_driven_distance_from_ticks(uncertainity_RR_ticks)/sqrt(3);
    float uncertainity_RL_m = get_driven_distance_from_ticks(uncertainity_RL_ticks)/sqrt(3);
    float RR = get_driven_distance_from_ticks(RR_ticks);
    float RL = get_driven_distance_from_ticks(RL_ticks);
    float len = track_width_m;

    float dy_dRR = ((RR + RL)*cos((RL - RR)/len) + len*sin((RR - RL)/len)) / (2*len);
    float dy_dRL = (-(RR + RL)*cos((RR - RL)/len) + len*sin((RR - RL)/len)) / (2*len);
    float dy_dlen = (RL - RR)*(RR + RL)*cos((RL - RR)/len) / (2*pow(len, 2));

    return pow(dy_dRR*uncertainity_RR_m, 2) + pow(dy_dRL*uncertainity_RL_m, 2) + pow(dy_dlen*uncertainity_track_width_m, 2);
}

float WheelsEncoders::get_yaw_variance(uint8_t uncertainity_RR_ticks, uint8_t uncertainity_RL_ticks, float uncertainity_track_width_m)
{
    float uncertainity_RR_m = get_driven_distance_from_ticks(uncertainity_RR_ticks)/sqrt(3);
    float uncertainity_RL_m = get_driven_distance_from_ticks(uncertainity_RL_ticks)/sqrt(3);
    float RR = get_driven_distance_from_ticks(RR_ticks);
    float RL = get_driven_distance_from_ticks(RL_ticks);
    float len = track_width_m;

    float dyaw_dRR = 1/len;
    float dyaw_dRL = 1/len;
    float dyaw_dlen = (RR - RL)/pow(len, 2);

    return pow(dyaw_dRR*uncertainity_RR_m, 2) + pow(dyaw_dRL*uncertainity_RL_m, 2) + pow(dyaw_dlen*uncertainity_track_width_m, 2);
}
