#include <ros/ros.h>
#include "core2/Core2Odometry.h"
#include "WheelsEncoders.h"


static ros::Publisher pub;
static WheelsEncoders encoders;


void wheelsTicksCallback(const core2::Core2Odometry& msg)
{
    encoders.notification_ticks(msg.header, msg.RR_wheel_ticks_delta, msg.RL_wheel_ticks_delta);
    nav_msgs::Odometry odometryMsg = encoders.calculate_odometry();
    encoders.reset_ticks();
    pub.publish(odometryMsg);
}


int main(int argc, char **argv)
{
    ros::init(argc, argv, "core2_wheels_odometry_node");
    ros::NodeHandle nh;
    ros::NodeHandle nh_private("~");
    ros::Subscriber sub = nh.subscribe("/core2/output/wheelsTicks", 10, wheelsTicksCallback);
    pub = nh.advertise<nav_msgs::Odometry>("core2/output/wheelsOdometry", 10);
    encoders = WheelsEncoders(&nh_private);

    ROS_INFO("Wheels odometry calculation node ready!");
    ros::spin();    
}