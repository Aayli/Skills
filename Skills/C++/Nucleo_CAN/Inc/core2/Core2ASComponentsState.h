#ifndef _ROS_core2_Core2ASComponentsState_h
#define _ROS_core2_Core2ASComponentsState_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace core2
{

  class Core2ASComponentsState : public ros::Msg
  {
    public:
      typedef bool _TS_type;
      _TS_type TS;
      typedef bool _SA_type;
      _SA_type SA;
      typedef int8_t _SB_type;
      _SB_type SB;
      typedef int8_t _EBS_type;
      _EBS_type EBS;
      typedef int8_t _ASSI_type;
      _ASSI_type ASSI;
      typedef bool _ASMS_type;
      _ASMS_type ASMS;
      typedef bool _RES_go_type;
      _RES_go_type RES_go;
      typedef bool _RES_triggered_sdc_type;
      _RES_triggered_sdc_type RES_triggered_sdc;
      typedef int32_t _mission_number_type;
      _mission_number_type mission_number;

    Core2ASComponentsState():
      TS(0),
      SA(0),
      SB(0),
      EBS(0),
      ASSI(0),
      ASMS(0),
      RES_go(0),
      RES_triggered_sdc(0),
      mission_number(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        bool real;
        uint8_t base;
      } u_TS;
      u_TS.real = this->TS;
      *(outbuffer + offset + 0) = (u_TS.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->TS);
      union {
        bool real;
        uint8_t base;
      } u_SA;
      u_SA.real = this->SA;
      *(outbuffer + offset + 0) = (u_SA.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->SA);
      union {
        int8_t real;
        uint8_t base;
      } u_SB;
      u_SB.real = this->SB;
      *(outbuffer + offset + 0) = (u_SB.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->SB);
      union {
        int8_t real;
        uint8_t base;
      } u_EBS;
      u_EBS.real = this->EBS;
      *(outbuffer + offset + 0) = (u_EBS.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->EBS);
      union {
        int8_t real;
        uint8_t base;
      } u_ASSI;
      u_ASSI.real = this->ASSI;
      *(outbuffer + offset + 0) = (u_ASSI.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->ASSI);
      union {
        bool real;
        uint8_t base;
      } u_ASMS;
      u_ASMS.real = this->ASMS;
      *(outbuffer + offset + 0) = (u_ASMS.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->ASMS);
      union {
        bool real;
        uint8_t base;
      } u_RES_go;
      u_RES_go.real = this->RES_go;
      *(outbuffer + offset + 0) = (u_RES_go.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->RES_go);
      union {
        bool real;
        uint8_t base;
      } u_RES_triggered_sdc;
      u_RES_triggered_sdc.real = this->RES_triggered_sdc;
      *(outbuffer + offset + 0) = (u_RES_triggered_sdc.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->RES_triggered_sdc);
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
        bool real;
        uint8_t base;
      } u_TS;
      u_TS.base = 0;
      u_TS.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->TS = u_TS.real;
      offset += sizeof(this->TS);
      union {
        bool real;
        uint8_t base;
      } u_SA;
      u_SA.base = 0;
      u_SA.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->SA = u_SA.real;
      offset += sizeof(this->SA);
      union {
        int8_t real;
        uint8_t base;
      } u_SB;
      u_SB.base = 0;
      u_SB.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->SB = u_SB.real;
      offset += sizeof(this->SB);
      union {
        int8_t real;
        uint8_t base;
      } u_EBS;
      u_EBS.base = 0;
      u_EBS.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->EBS = u_EBS.real;
      offset += sizeof(this->EBS);
      union {
        int8_t real;
        uint8_t base;
      } u_ASSI;
      u_ASSI.base = 0;
      u_ASSI.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->ASSI = u_ASSI.real;
      offset += sizeof(this->ASSI);
      union {
        bool real;
        uint8_t base;
      } u_ASMS;
      u_ASMS.base = 0;
      u_ASMS.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->ASMS = u_ASMS.real;
      offset += sizeof(this->ASMS);
      union {
        bool real;
        uint8_t base;
      } u_RES_go;
      u_RES_go.base = 0;
      u_RES_go.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->RES_go = u_RES_go.real;
      offset += sizeof(this->RES_go);
      union {
        bool real;
        uint8_t base;
      } u_RES_triggered_sdc;
      u_RES_triggered_sdc.base = 0;
      u_RES_triggered_sdc.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->RES_triggered_sdc = u_RES_triggered_sdc.real;
      offset += sizeof(this->RES_triggered_sdc);
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

    const char * getType(){ return "core2/Core2ASComponentsState"; };
    const char * getMD5(){ return "ea2ef0798cb1f03e9729ddab7817b3cb"; };

  };

}
#endif