#ifndef _ROS_core2_Core2Odometry_h
#define _ROS_core2_Core2Odometry_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "std_msgs/Header.h"

namespace core2
{

  class Core2Odometry : public ros::Msg
  {
    public:
      typedef std_msgs::Header _header_type;
      _header_type header;
      typedef uint16_t _RR_wheel_ticks_delta_type;
      _RR_wheel_ticks_delta_type RR_wheel_ticks_delta;
      typedef uint16_t _RL_wheel_ticks_delta_type;
      _RL_wheel_ticks_delta_type RL_wheel_ticks_delta;

    Core2Odometry():
      header(),
      RR_wheel_ticks_delta(0),
      RL_wheel_ticks_delta(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += this->header.serialize(outbuffer + offset);
      *(outbuffer + offset + 0) = (this->RR_wheel_ticks_delta >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->RR_wheel_ticks_delta >> (8 * 1)) & 0xFF;
      offset += sizeof(this->RR_wheel_ticks_delta);
      *(outbuffer + offset + 0) = (this->RL_wheel_ticks_delta >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->RL_wheel_ticks_delta >> (8 * 1)) & 0xFF;
      offset += sizeof(this->RL_wheel_ticks_delta);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += this->header.deserialize(inbuffer + offset);
      this->RR_wheel_ticks_delta =  ((uint16_t) (*(inbuffer + offset)));
      this->RR_wheel_ticks_delta |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->RR_wheel_ticks_delta);
      this->RL_wheel_ticks_delta =  ((uint16_t) (*(inbuffer + offset)));
      this->RL_wheel_ticks_delta |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->RL_wheel_ticks_delta);
     return offset;
    }

    const char * getType(){ return "core2/Core2Odometry"; };
    const char * getMD5(){ return "532614d005983dfa13ddcbaa8b4a3491"; };

  };

}
#endif