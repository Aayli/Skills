//
// Created by aayli on 03.02.2021.
//

#ifndef CORE2_WheelsEncodersVelocities_H
#define CORE2_WheelsEncodersVelocities_H

#include <vector>
#include <list>
#include <ros/ros.h>
#include <geometry_msgs/TwistWithCovariance.h>

struct VelocityEstimationData
{
    ros::Time time_absolute;
    float driven_distance_absolute_m;
    float yaw_absolute_rad;
    float driven_distance_cov;
    float yaw_cov;
    VelocityEstimationData();
    VelocityEstimationData(ros::Time _time_absolute, float _driven_distance_absolute_m, float _yaw_absolute_rad, float _driven_distance_cov, float _yaw_cov);
};

class WheelsEncodersVelocities
{
private:
    int data_list_size;
    std::list<VelocityEstimationData> data_chronological;
    geometry_msgs::TwistWithCovariance twistWithCovarianceMsg;
    void calculateVelocities();
    void calculateVelocitiesCovariance();

public:
    WheelsEncodersVelocities(int window_size=13);
    void updateData(VelocityEstimationData encoder_readings);
    geometry_msgs::TwistWithCovariance& getTwistOdometryMsg();
};

#endif //CORE2_WheelsEncodersVelocities_H