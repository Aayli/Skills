#ifndef _ROS_core2_Core2Indicators_h
#define _ROS_core2_Core2Indicators_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace core2
{

  class Core2Indicators : public ros::Msg
  {
    public:
      typedef int32_t _AS_state_type;
      _AS_state_type AS_state;
      typedef int32_t _mission_number_type;
      _mission_number_type mission_number;

    Core2Indicators():
      AS_state(0),
      mission_number(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        int32_t real;
        uint32_t base;
      } u_AS_state;
      u_AS_state.real = this->AS_state;
      *(outbuffer + offset + 0) = (u_AS_state.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_AS_state.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_AS_state.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_AS_state.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->AS_state);
      union {
        int32_t real;
        uint32_t base;
      } u_mission_number;
      u_mission_number.real = this->mission_number;
      *(outbuffer + offset + 0) = (u_mission_number.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_mission_number.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_mission_number.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_mission_number.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->mission_number);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        int32_t real;
        uint32_t base;
      } u_AS_state;
      u_AS_state.base = 0;
      u_AS_state.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_AS_state.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_AS_state.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_AS_state.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->AS_state = u_AS_state.real;
      offset += sizeof(this->AS_state);
      union {
        int32_t real;
        uint32_t base;
      } u_mission_number;
      u_mission_number.base = 0;
      u_mission_number.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_mission_number.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_mission_number.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_mission_number.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->mission_number = u_mission_number.real;
      offset += sizeof(this->mission_number);
     return offset;
    }

    const char * getType(){ return "core2/Core2Indicators"; };
    const char * getMD5(){ return "24e723b5d64c182a0a93899803c7e5a3"; };

  };

}
#endif