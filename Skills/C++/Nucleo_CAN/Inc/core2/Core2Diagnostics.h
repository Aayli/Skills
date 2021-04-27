#ifndef _ROS_core2_Core2Diagnostics_h
#define _ROS_core2_Core2Diagnostics_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace core2
{

  class Core2Diagnostics : public ros::Msg
  {
    public:
      typedef bool _leftSteeringLimit_type;
      _leftSteeringLimit_type leftSteeringLimit;
      typedef bool _rightSteeringLimit_type;
      _rightSteeringLimit_type rightSteeringLimit;
      typedef float _circuit_12V_type;
      _circuit_12V_type circuit_12V;
      typedef float _circuit_24V_type;
      _circuit_24V_type circuit_24V;
      typedef float _temperature_type;
      _temperature_type temperature;
      typedef bool _fansOn_type;
      _fansOn_type fansOn;

    Core2Diagnostics():
      leftSteeringLimit(0),
      rightSteeringLimit(0),
      circuit_12V(0),
      circuit_24V(0),
      temperature(0),
      fansOn(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        bool real;
        uint8_t base;
      } u_leftSteeringLimit;
      u_leftSteeringLimit.real = this->leftSteeringLimit;
      *(outbuffer + offset + 0) = (u_leftSteeringLimit.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->leftSteeringLimit);
      union {
        bool real;
        uint8_t base;
      } u_rightSteeringLimit;
      u_rightSteeringLimit.real = this->rightSteeringLimit;
      *(outbuffer + offset + 0) = (u_rightSteeringLimit.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->rightSteeringLimit);
      union {
        float real;
        uint32_t base;
      } u_circuit_12V;
      u_circuit_12V.real = this->circuit_12V;
      *(outbuffer + offset + 0) = (u_circuit_12V.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_circuit_12V.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_circuit_12V.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_circuit_12V.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->circuit_12V);
      union {
        float real;
        uint32_t base;
      } u_circuit_24V;
      u_circuit_24V.real = this->circuit_24V;
      *(outbuffer + offset + 0) = (u_circuit_24V.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_circuit_24V.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_circuit_24V.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_circuit_24V.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->circuit_24V);
      union {
        float real;
        uint32_t base;
      } u_temperature;
      u_temperature.real = this->temperature;
      *(outbuffer + offset + 0) = (u_temperature.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_temperature.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_temperature.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_temperature.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->temperature);
      union {
        bool real;
        uint8_t base;
      } u_fansOn;
      u_fansOn.real = this->fansOn;
      *(outbuffer + offset + 0) = (u_fansOn.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->fansOn);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        bool real;
        uint8_t base;
      } u_leftSteeringLimit;
      u_leftSteeringLimit.base = 0;
      u_leftSteeringLimit.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->leftSteeringLimit = u_leftSteeringLimit.real;
      offset += sizeof(this->leftSteeringLimit);
      union {
        bool real;
        uint8_t base;
      } u_rightSteeringLimit;
      u_rightSteeringLimit.base = 0;
      u_rightSteeringLimit.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->rightSteeringLimit = u_rightSteeringLimit.real;
      offset += sizeof(this->rightSteeringLimit);
      union {
        float real;
        uint32_t base;
      } u_circuit_12V;
      u_circuit_12V.base = 0;
      u_circuit_12V.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_circuit_12V.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_circuit_12V.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_circuit_12V.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->circuit_12V = u_circuit_12V.real;
      offset += sizeof(this->circuit_12V);
      union {
        float real;
        uint32_t base;
      } u_circuit_24V;
      u_circuit_24V.base = 0;
      u_circuit_24V.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_circuit_24V.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_circuit_24V.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_circuit_24V.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->circuit_24V = u_circuit_24V.real;
      offset += sizeof(this->circuit_24V);
      union {
        float real;
        uint32_t base;
      } u_temperature;
      u_temperature.base = 0;
      u_temperature.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_temperature.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_temperature.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_temperature.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->temperature = u_temperature.real;
      offset += sizeof(this->temperature);
      union {
        bool real;
        uint8_t base;
      } u_fansOn;
      u_fansOn.base = 0;
      u_fansOn.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->fansOn = u_fansOn.real;
      offset += sizeof(this->fansOn);
     return offset;
    }

    const char * getType(){ return "core2/Core2Diagnostics"; };
    const char * getMD5(){ return "d9d1fc7ca635f73f527b97f375d56b7e"; };

  };

}
#endif