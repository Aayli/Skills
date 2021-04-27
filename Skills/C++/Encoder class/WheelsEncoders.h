// References:
// https://answers.ros.org/question/241602/get-odometry-from-wheels-encoders/

#pragma once
#include <nav_msgs/Odometry.h>
#include "WheelsEncodersVelocities.h"


class WheelsEncoders
{
private:
    float ticks_per_rotation;
    float wheels_diameter_m;
    float tyre_deflaction;
    float track_width_m;
    float uncertainty_track_width_m;

    // Variables
    float driven_distance_absolute_m;
    float x_absolute_m;
    float y_absolute_m;
    float yaw_absolute_rad;
    uint8_t RR_ticks;
    uint8_t RL_ticks;
    float x_cov_prev;
    float y_cov_prev;
    float yaw_cov_prev;

    // To be removed
    ros::Time lastNotificationTimeStamp;
    nav_msgs::Odometry odometryMsg;
    // Velocity estimators
    WheelsEncodersVelocities wheels_encoders_velocity;

    void loadSettings(ros::NodeHandle* nh); 
    float get_driven_distance_from_ticks(uint8_t ticks);
    float get_driven_distance_variance(uint8_t uncertainity_RR_ticks, uint8_t uncertainity_RL_ticks);
    float get_x_variance(uint8_t uncertainity_RR_ticks, uint8_t uncertainity_RL_ticks, float uncertainity_track_width_m);
    float get_y_variance(uint8_t uncertainity_RR_ticks, uint8_t uncertainity_RL_ticks, float uncertainity_track_width_m);
    float get_yaw_variance(uint8_t uncertainity_RR_ticks, uint8_t uncertainity_RL_ticks, float uncertainity_track_width_m);

public:
    WheelsEncoders(){};
    WheelsEncoders(ros::NodeHandle* nh);
    void notification_ticks(std_msgs::Header header, int RR_ticks_delta, int RL_ticks_delta);
    void reset_ticks();

    nav_msgs::Odometry calculate_odometry();
};