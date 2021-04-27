#ifndef _ROS_core2_Core2Control_h
#define _ROS_core2_Core2Control_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace core2
{

  class Core2Control : public ros::Msg
  {
    public:
      typedef float _vehicleSpeed_ms_type;
      _vehicleSpeed_ms_type vehicleSpeed_ms;
      typedef float _steeringAngle_rad_type;
      _steeringAngle_rad_type steeringAngle_rad;

    Core2Control():
      vehicleSpeed_ms(0),
      steeringAngle_rad(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        float real;
        uint32_t base;
      } u_vehicleSpeed_ms;
      u_vehicleSpeed_ms.real = this->vehicleSpeed_ms;
      *(outbuffer + offset + 0) = (u_vehicleSpeed_ms.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_vehicleSpeed_ms.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_vehicleSpeed_ms.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_vehicleSpeed_ms.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->vehicleSpeed_ms);
      union {
        float real;
        uint32_t base;
      } u_steeringAngle_rad;
      u_steeringAngle_rad.real = this->steeringAngle_rad;
      *(outbuffer + offset + 0) = (u_steeringAngle_rad.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_steeringAngle_rad.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_steeringAngle_rad.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_steeringAngle_rad.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->steeringAngle_rad);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        float real;
        uint32_t base;
      } u_vehicleSpeed_ms;
      u_vehicleSpeed_ms.base = 0;
      u_vehicleSpeed_ms.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_vehicleSpeed_ms.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_vehicleSpeed_ms.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_vehicleSpeed_ms.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->vehicleSpeed_ms = u_vehicleSpeed_ms.real;
      offset += sizeof(this->vehicleSpeed_ms);
      union {
        float real;
        uint32_t base;
      } u_steeringAngle_rad;
      u_steeringAngle_rad.base = 0;
      u_steeringAngle_rad.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_steeringAngle_rad.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_steeringAngle_rad.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_steeringAngle_rad.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->steeringAngle_rad = u_steeringAngle_rad.real;
      offset += sizeof(this->steeringAngle_rad);
     return offset;
    }

    const char * getType(){ return "core2/Core2Control"; };
    const char * getMD5(){ return "3ac4e84a24df164fb856dfe1ab7f9081"; };

  };

}
#endif