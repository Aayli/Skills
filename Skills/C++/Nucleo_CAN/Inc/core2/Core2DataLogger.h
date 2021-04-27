#ifndef _ROS_core2_Core2DataLogger_h
#define _ROS_core2_Core2DataLogger_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace core2
{

  class Core2DataLogger : public ros::Msg
  {
    public:
      typedef uint8_t _Speed_actual_type;
      _Speed_actual_type Speed_actual;
      typedef uint8_t _Speed_target_type;
      _Speed_target_type Speed_target;
      typedef int8_t _Steering_angle_actual_type;
      _Steering_angle_actual_type Steering_angle_actual;
      typedef int8_t _Steering_angle_target_type;
      _Steering_angle_target_type Steering_angle_target;
      typedef uint8_t _Brake_hydr_actual_type;
      _Brake_hydr_actual_type Brake_hydr_actual;
      typedef uint8_t _Brake_hydr_target_type;
      _Brake_hydr_target_type Brake_hydr_target;
      typedef int8_t _Motor_moment_actual_type;
      _Motor_moment_actual_type Motor_moment_actual;
      typedef int8_t _Motor_moment_target_type;
      _Motor_moment_target_type Motor_moment_target;
      typedef int16_t _Acceleration_longitudinal_type;
      _Acceleration_longitudinal_type Acceleration_longitudinal;
      typedef int16_t _Acceleration_lateral_type;
      _Acceleration_lateral_type Acceleration_lateral;
      typedef int16_t _Yaw_rate_type;
      _Yaw_rate_type Yaw_rate;
      typedef int8_t _AS_status_type;
      _AS_status_type AS_status;
      typedef int8_t _EBS_status_type;
      _EBS_status_type EBS_status;
      typedef int8_t _AMI_status_type;
      _AMI_status_type AMI_status;
      typedef bool _Steering_state_type;
      _Steering_state_type Steering_state;
      typedef int8_t _Service_brake_state_type;
      _Service_brake_state_type Service_brake_state;
      typedef uint8_t _Lap_counter_type;
      _Lap_counter_type Lap_counter;
      typedef uint8_t _Cones_count_actual_type;
      _Cones_count_actual_type Cones_count_actual;
      typedef uint8_t _Cones_count_all_type;
      _Cones_count_all_type Cones_count_all;

    Core2DataLogger():
      Speed_actual(0),
      Speed_target(0),
      Steering_angle_actual(0),
      Steering_angle_target(0),
      Brake_hydr_actual(0),
      Brake_hydr_target(0),
      Motor_moment_actual(0),
      Motor_moment_target(0),
      Acceleration_longitudinal(0),
      Acceleration_lateral(0),
      Yaw_rate(0),
      AS_status(0),
      EBS_status(0),
      AMI_status(0),
      Steering_state(0),
      Service_brake_state(0),
      Lap_counter(0),
      Cones_count_actual(0),
      Cones_count_all(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      *(outbuffer + offset + 0) = (this->Speed_actual >> (8 * 0)) & 0xFF;
      offset += sizeof(this->Speed_actual);
      *(outbuffer + offset + 0) = (this->Speed_target >> (8 * 0)) & 0xFF;
      offset += sizeof(this->Speed_target);
      union {
        int8_t real;
        uint8_t base;
      } u_Steering_angle_actual;
      u_Steering_angle_actual.real = this->Steering_angle_actual;
      *(outbuffer + offset + 0) = (u_Steering_angle_actual.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->Steering_angle_actual);
      union {
        int8_t real;
        uint8_t base;
      } u_Steering_angle_target;
      u_Steering_angle_target.real = this->Steering_angle_target;
      *(outbuffer + offset + 0) = (u_Steering_angle_target.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->Steering_angle_target);
      *(outbuffer + offset + 0) = (this->Brake_hydr_actual >> (8 * 0)) & 0xFF;
      offset += sizeof(this->Brake_hydr_actual);
      *(outbuffer + offset + 0) = (this->Brake_hydr_target >> (8 * 0)) & 0xFF;
      offset += sizeof(this->Brake_hydr_target);
      union {
        int8_t real;
        uint8_t base;
      } u_Motor_moment_actual;
      u_Motor_moment_actual.real = this->Motor_moment_actual;
      *(outbuffer + offset + 0) = (u_Motor_moment_actual.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->Motor_moment_actual);
      union {
        int8_t real;
        uint8_t base;
      } u_Motor_moment_target;
      u_Motor_moment_target.real = this->Motor_moment_target;
      *(outbuffer + offset + 0) = (u_Motor_moment_target.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->Motor_moment_target);
      union {
        int16_t real;
        uint16_t base;
      } u_Acceleration_longitudinal;
      u_Acceleration_longitudinal.real = this->Acceleration_longitudinal;
      *(outbuffer + offset + 0) = (u_Acceleration_longitudinal.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_Acceleration_longitudinal.base >> (8 * 1)) & 0xFF;
      offset += sizeof(this->Acceleration_longitudinal);
      union {
        int16_t real;
        uint16_t base;
      } u_Acceleration_lateral;
      u_Acceleration_lateral.real = this->Acceleration_lateral;
      *(outbuffer + offset + 0) = (u_Acceleration_lateral.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_Acceleration_lateral.base >> (8 * 1)) & 0xFF;
      offset += sizeof(this->Acceleration_lateral);
      union {
        int16_t real;
        uint16_t base;
      } u_Yaw_rate;
      u_Yaw_rate.real = this->Yaw_rate;
      *(outbuffer + offset + 0) = (u_Yaw_rate.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_Yaw_rate.base >> (8 * 1)) & 0xFF;
      offset += sizeof(this->Yaw_rate);
      union {
        int8_t real;
        uint8_t base;
      } u_AS_status;
      u_AS_status.real = this->AS_status;
      *(outbuffer + offset + 0) = (u_AS_status.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->AS_status);
      union {
        int8_t real;
        uint8_t base;
      } u_EBS_status;
      u_EBS_status.real = this->EBS_status;
      *(outbuffer + offset + 0) = (u_EBS_status.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->EBS_status);
      union {
        int8_t real;
        uint8_t base;
      } u_AMI_status;
      u_AMI_status.real = this->AMI_status;
      *(outbuffer + offset + 0) = (u_AMI_status.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->AMI_status);
      union {
        bool real;
        uint8_t base;
      } u_Steering_state;
      u_Steering_state.real = this->Steering_state;
      *(outbuffer + offset + 0) = (u_Steering_state.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->Steering_state);
      union {
        int8_t real;
        uint8_t base;
      } u_Service_brake_state;
      u_Service_brake_state.real = this->Service_brake_state;
      *(outbuffer + offset + 0) = (u_Service_brake_state.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->Service_brake_state);
      *(outbuffer + offset + 0) = (this->Lap_counter >> (8 * 0)) & 0xFF;
      offset += sizeof(this->Lap_counter);
      *(outbuffer + offset + 0) = (this->Cones_count_actual >> (8 * 0)) & 0xFF;
      offset += sizeof(this->Cones_count_actual);
      *(outbuffer + offset + 0) = (this->Cones_count_all >> (8 * 0)) & 0xFF;
      offset += sizeof(this->Cones_count_all);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      this->Speed_actual =  ((uint8_t) (*(inbuffer + offset)));
      offset += sizeof(this->Speed_actual);
      this->Speed_target =  ((uint8_t) (*(inbuffer + offset)));
      offset += sizeof(this->Speed_target);
      union {
        int8_t real;
        uint8_t base;
      } u_Steering_angle_actual;
      u_Steering_angle_actual.base = 0;
      u_Steering_angle_actual.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->Steering_angle_actual = u_Steering_angle_actual.real;
      offset += sizeof(this->Steering_angle_actual);
      union {
        int8_t real;
        uint8_t base;
      } u_Steering_angle_target;
      u_Steering_angle_target.base = 0;
      u_Steering_angle_target.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->Steering_angle_target = u_Steering_angle_target.real;
      offset += sizeof(this->Steering_angle_target);
      this->Brake_hydr_actual =  ((uint8_t) (*(inbuffer + offset)));
      offset += sizeof(this->Brake_hydr_actual);
      this->Brake_hydr_target =  ((uint8_t) (*(inbuffer + offset)));
      offset += sizeof(this->Brake_hydr_target);
      union {
        int8_t real;
        uint8_t base;
      } u_Motor_moment_actual;
      u_Motor_moment_actual.base = 0;
      u_Motor_moment_actual.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->Motor_moment_actual = u_Motor_moment_actual.real;
      offset += sizeof(this->Motor_moment_actual);
      union {
        int8_t real;
        uint8_t base;
      } u_Motor_moment_target;
      u_Motor_moment_target.base = 0;
      u_Motor_moment_target.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->Motor_moment_target = u_Motor_moment_target.real;
      offset += sizeof(this->Motor_moment_target);
      union {
        int16_t real;
        uint16_t base;
      } u_Acceleration_longitudinal;
      u_Acceleration_longitudinal.base = 0;
      u_Acceleration_longitudinal.base |= ((uint16_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_Acceleration_longitudinal.base |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      this->Acceleration_longitudinal = u_Acceleration_longitudinal.real;
      offset += sizeof(this->Acceleration_longitudinal);
      union {
        int16_t real;
        uint16_t base;
      } u_Acceleration_lateral;
      u_Acceleration_lateral.base = 0;
      u_Acceleration_lateral.base |= ((uint16_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_Acceleration_lateral.base |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      this->Acceleration_lateral = u_Acceleration_lateral.real;
      offset += sizeof(this->Acceleration_lateral);
      union {
        int16_t real;
        uint16_t base;
      } u_Yaw_rate;
      u_Yaw_rate.base = 0;
      u_Yaw_rate.base |= ((uint16_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_Yaw_rate.base |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      this->Yaw_rate = u_Yaw_rate.real;
      offset += sizeof(this->Yaw_rate);
      union {
        int8_t real;
        uint8_t base;
      } u_AS_status;
      u_AS_status.base = 0;
      u_AS_status.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->AS_status = u_AS_status.real;
      offset += sizeof(this->AS_status);
      union {
        int8_t real;
        uint8_t base;
      } u_EBS_status;
      u_EBS_status.base = 0;
      u_EBS_status.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->EBS_status = u_EBS_status.real;
      offset += sizeof(this->EBS_status);
      union {
        int8_t real;
        uint8_t base;
      } u_AMI_status;
      u_AMI_status.base = 0;
      u_AMI_status.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->AMI_status = u_AMI_status.real;
      offset += sizeof(this->AMI_status);
      union {
        bool real;
        uint8_t base;
      } u_Steering_state;
      u_Steering_state.base = 0;
      u_Steering_state.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->Steering_state = u_Steering_state.real;
      offset += sizeof(this->Steering_state);
      union {
        int8_t real;
        uint8_t base;
      } u_Service_brake_state;
      u_Service_brake_state.base = 0;
      u_Service_brake_state.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->Service_brake_state = u_Service_brake_state.real;
      offset += sizeof(this->Service_brake_state);
      this->Lap_counter =  ((uint8_t) (*(inbuffer + offset)));
      offset += sizeof(this->Lap_counter);
      this->Cones_count_actual =  ((uint8_t) (*(inbuffer + offset)));
      offset += sizeof(this->Cones_count_actual);
      this->Cones_count_all =  ((uint8_t) (*(inbuffer + offset)));
      offset += sizeof(this->Cones_count_all);
     return offset;
    }

    const char * getType(){ return "core2/Core2DataLogger"; };
    const char * getMD5(){ return "94e70e92dad05d7c207cb22426d59700"; };

  };

}
#endif