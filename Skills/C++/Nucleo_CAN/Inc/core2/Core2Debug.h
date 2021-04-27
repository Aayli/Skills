#ifndef _ROS_core2_Core2Debug_h
#define _ROS_core2_Core2Debug_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace core2
{

  class Core2Debug : public ros::Msg
  {
    public:
      typedef const char* _steeringLimit_debug_type;
      _steeringLimit_debug_type steeringLimit_debug;
      typedef const char* _steering_debug_type;
      _steering_debug_type steering_debug;
      typedef const char* _engine_debug_type;
      _engine_debug_type engine_debug;
      typedef const char* _brake_debug_type;
      _brake_debug_type brake_debug;
      typedef const char* _stepMotorStatus_debug_type;
      _stepMotorStatus_debug_type stepMotorStatus_debug;

    Core2Debug():
      steeringLimit_debug(""),
      steering_debug(""),
      engine_debug(""),
      brake_debug(""),
      stepMotorStatus_debug("")
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      uint32_t length_steeringLimit_debug = strlen(this->steeringLimit_debug);
      varToArr(outbuffer + offset, length_steeringLimit_debug);
      offset += 4;
      memcpy(outbuffer + offset, this->steeringLimit_debug, length_steeringLimit_debug);
      offset += length_steeringLimit_debug;
      uint32_t length_steering_debug = strlen(this->steering_debug);
      varToArr(outbuffer + offset, length_steering_debug);
      offset += 4;
      memcpy(outbuffer + offset, this->steering_debug, length_steering_debug);
      offset += length_steering_debug;
      uint32_t length_engine_debug = strlen(this->engine_debug);
      varToArr(outbuffer + offset, length_engine_debug);
      offset += 4;
      memcpy(outbuffer + offset, this->engine_debug, length_engine_debug);
      offset += length_engine_debug;
      uint32_t length_brake_debug = strlen(this->brake_debug);
      varToArr(outbuffer + offset, length_brake_debug);
      offset += 4;
      memcpy(outbuffer + offset, this->brake_debug, length_brake_debug);
      offset += length_brake_debug;
      uint32_t length_stepMotorStatus_debug = strlen(this->stepMotorStatus_debug);
      varToArr(outbuffer + offset, length_stepMotorStatus_debug);
      offset += 4;
      memcpy(outbuffer + offset, this->stepMotorStatus_debug, length_stepMotorStatus_debug);
      offset += length_stepMotorStatus_debug;
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      uint32_t length_steeringLimit_debug;
      arrToVar(length_steeringLimit_debug, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_steeringLimit_debug; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_steeringLimit_debug-1]=0;
      this->steeringLimit_debug = (char *)(inbuffer + offset-1);
      offset += length_steeringLimit_debug;
      uint32_t length_steering_debug;
      arrToVar(length_steering_debug, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_steering_debug; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_steering_debug-1]=0;
      this->steering_debug = (char *)(inbuffer + offset-1);
      offset += length_steering_debug;
      uint32_t length_engine_debug;
      arrToVar(length_engine_debug, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_engine_debug; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_engine_debug-1]=0;
      this->engine_debug = (char *)(inbuffer + offset-1);
      offset += length_engine_debug;
      uint32_t length_brake_debug;
      arrToVar(length_brake_debug, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_brake_debug; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_brake_debug-1]=0;
      this->brake_debug = (char *)(inbuffer + offset-1);
      offset += length_brake_debug;
      uint32_t length_stepMotorStatus_debug;
      arrToVar(length_stepMotorStatus_debug, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_stepMotorStatus_debug; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_stepMotorStatus_debug-1]=0;
      this->stepMotorStatus_debug = (char *)(inbuffer + offset-1);
      offset += length_stepMotorStatus_debug;
     return offset;
    }

    const char * getType(){ return "core2/Core2Debug"; };
    const char * getMD5(){ return "4dd0c711ce4e9718af677cb445f5ba11"; };

  };

}
#endif