#ifndef _ROS_dv_path_planning_BrakeMsg_h
#define _ROS_dv_path_planning_BrakeMsg_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace dv_path_planning
{

  class BrakeMsg : public ros::Msg
  {
    public:
      typedef bool _brake_type;
      _brake_type brake;

    BrakeMsg():
      brake(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        bool real;
        uint8_t base;
      } u_brake;
      u_brake.real = this->brake;
      *(outbuffer + offset + 0) = (u_brake.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->brake);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        bool real;
        uint8_t base;
      } u_brake;
      u_brake.base = 0;
      u_brake.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->brake = u_brake.real;
      offset += sizeof(this->brake);
     return offset;
    }

    const char * getType(){ return "dv_path_planning/BrakeMsg"; };
    const char * getMD5(){ return "691501d2b5eb4dc01a97397d7baf5fba"; };

  };

}
#endif