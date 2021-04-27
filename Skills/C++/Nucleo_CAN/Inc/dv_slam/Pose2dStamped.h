#ifndef _ROS_dv_slam_Pose2dStamped_h
#define _ROS_dv_slam_Pose2dStamped_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "std_msgs/Header.h"
#include "geometry_msgs/Pose2D.h"
#include "geometry_msgs/Quaternion.h"

namespace dv_slam
{

  class Pose2dStamped : public ros::Msg
  {
    public:
      typedef std_msgs::Header _header_type;
      _header_type header;
      typedef geometry_msgs::Pose2D _pose2d_type;
      _pose2d_type pose2d;
      typedef geometry_msgs::Quaternion _quaternion_type;
      _quaternion_type quaternion;

    Pose2dStamped():
      header(),
      pose2d(),
      quaternion()
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += this->header.serialize(outbuffer + offset);
      offset += this->pose2d.serialize(outbuffer + offset);
      offset += this->quaternion.serialize(outbuffer + offset);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += this->header.deserialize(inbuffer + offset);
      offset += this->pose2d.deserialize(inbuffer + offset);
      offset += this->quaternion.deserialize(inbuffer + offset);
     return offset;
    }

    const char * getType(){ return "dv_slam/Pose2dStamped"; };
    const char * getMD5(){ return "8a0053790962d221dae216a9c7a8214c"; };

  };

}
#endif