//
// Created by aayli on 03.02.2021.
//

#include "WheelsEncodersVelocities.h"
#include "PolynomialRegression.h"


VelocityEstimationData::VelocityEstimationData(ros::Time _time_absolute, float _driven_distance_absolute_m, float _yaw_absolute_rad, float _driven_distance_cov, float _yaw_cov)
{
    time_absolute = _time_absolute;
    driven_distance_absolute_m = _driven_distance_absolute_m;
    yaw_absolute_rad =_yaw_absolute_rad;
    driven_distance_cov = _driven_distance_cov;
    yaw_cov = _yaw_cov;
}

WheelsEncodersVelocities::WheelsEncodersVelocities(int window_size)
{
    data_list_size = window_size;
}

void WheelsEncodersVelocities::updateData(VelocityEstimationData encoder_readings)
{
    data_chronological.push_back(encoder_readings);

    if (data_chronological.size() > data_list_size)
        data_chronological.erase(data_chronological.begin());
}

void WheelsEncodersVelocities::calculateVelocities()
{
    // Polynomial parameters and variables
    int polynomial_order = 2;
    std::vector<float> coeffs;
    float a,b,c;

    // Position and time data
    std::vector<float> relative_time;
    std::vector<float> linear_distance;
    std::vector<float> angular_rotation;
    ros::Time time_base = data_chronological.front().time_absolute;
    float driven_distance_first = data_chronological.front().driven_distance_absolute_m;
    float yaw_absolute_first = data_chronological.front().driven_distance_absolute_m;

    for(std::list<VelocityEstimationData>::iterator er = data_chronological.begin(); er != data_chronological.end(); ++er)
    {
        relative_time.push_back( (er->time_absolute - time_base).toSec() );
        linear_distance.push_back(er->driven_distance_absolute_m - driven_distance_first);
        angular_rotation.push_back(er->yaw_absolute_rad - yaw_absolute_first);
    }

    // Polynomial calculation & Velocity calculation
    // Velocity calculation
    /*
    x - time data           y - position data
    v = dy/dx - position derivate in respect to time, what gives velocity
    y = ax^2 + bx + c
    v = 2ax + b
    */

    float middle_relative_time = relative_time[(relative_time.size() - 1) / 2];
    PolynomialRegression<float> poly_fit = PolynomialRegression<float>();

    poly_fit.fitIt(relative_time, linear_distance, polynomial_order, coeffs);
    a = coeffs[2];
    b = coeffs[1];
    c = coeffs[0];
    twistWithCovarianceMsg.twist.linear.x = 2*a*middle_relative_time + b;

    poly_fit.fitIt(relative_time, angular_rotation, polynomial_order, coeffs);
    a = coeffs[2];
    b = coeffs[1];
    c = coeffs[0];
    twistWithCovarianceMsg.twist.angular.z = 2*a*middle_relative_time + b;
}

void WheelsEncodersVelocities::calculateVelocitiesCovariance()
{   
    // Take first and last covariance data
    VelocityEstimationData data_first = data_chronological.front();
    VelocityEstimationData data_last = data_chronological.back();

    float driven_distance_first_cov = data_first.driven_distance_cov;
    float yaw_first_cov = data_first.yaw_cov;

    float driven_distance_last_cov = data_last.driven_distance_cov;
    float yaw_last_cov = data_last.yaw_cov;

    // Calculate twist covariance
    /* http://www.ftj.agh.edu.pl/zdf/danepom.pdf page 9 (1.13)
       where,
       y = (driven_distance_last - driven_distance_first)/(time_last - time_first)
       x1 -> driven_distance_last           u^2(x1) -> driven_distance_cov_last
       x2 -> driven_distance_first          u^2(x2) -> driven_distance_cov_first
       u - uncertainty
     */
    float dt = (data_last.time_absolute - data_first.time_absolute).toSec();
    twistWithCovarianceMsg.covariance[0] = driven_distance_first_cov + driven_distance_last_cov / pow(dt, 2);
    twistWithCovarianceMsg.covariance[35] = yaw_first_cov + yaw_last_cov / pow(dt, 2);

}

geometry_msgs::TwistWithCovariance& WheelsEncodersVelocities::getTwistOdometryMsg()
{
    if (data_chronological.size() < 3)
    {
        twistWithCovarianceMsg.twist.linear.x = 0;
        twistWithCovarianceMsg.twist.angular.z = 0;
        twistWithCovarianceMsg.covariance[0] = std::numeric_limits<float>::max();
        twistWithCovarianceMsg.covariance[35] = std::numeric_limits<float>::max();
    }
    else
    {
        calculateVelocities();
        calculateVelocitiesCovariance();
    }  
    return twistWithCovarianceMsg;
}