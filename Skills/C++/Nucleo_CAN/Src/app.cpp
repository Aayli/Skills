/*
 * main.cpp

 *
 *  Created on: 2018/01/17
 *      Author: yoneken
 */
#include <app.h>
#include <ros.h>
#include <std_msgs/String.h>
#include "gpio.h"
#include "tim.h"
//#include "core2/Core2EngineDebug.h"
#include "core2/Core2Odometry.h"
#include "can_communication.h"
#include "CAN_CONFIG.h"


#define ENGINE_DEBUG_FREQUENCY_MS 25
#define ODOMETRY_PUBLISH_FREQUENCY_MS 25
#define CORRECT_WORK_BLINKING_FREQUENCY_MS 1000
#define RESET_TIM_FREQUENCY_MS 5000
#define ERROR_BLINKING_FREQUENCY_MS 200


volatile uint32_t time_ms = 0;
volatile uint32_t odomSeq = 0;

ros::NodeHandle nh;


core2::Core2Odometry odometryMsg;
ros::Publisher pub_odometry("core2/output/wheelsTicks", &odometryMsg);

std_msgs::String str_msg;
ros::Publisher chatter("chatter", &str_msg);
char hello[] = "Hello world from STM32!";

void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart){
  nh.getHardware()->flush();
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart){
  nh.getHardware()->reset_rbuf();
}

void sendOdometryMsg(uint32_t seq)
{
  odometryMsg.header.stamp = nh.now();
  odometryMsg.header.frame_id = "odom";
  odometryMsg.header.seq = odomSeq;
  odometryMsg.RR_wheel_ticks_delta = RR_wheel_encoder_ticks_delta;
  odometryMsg.RL_wheel_ticks_delta = RL_wheel_encoder_ticks_delta;
  pub_odometry.publish(&odometryMsg);

  RR_wheel_encoder_ticks_delta = 0;
  RL_wheel_encoder_ticks_delta = 0;
}

void setup(void)
{
  nh.initNode();
  nh.advertise(chatter);
  nh.advertise(pub_odometry);

  HAL_TIM_Base_Start_IT(&htim14);
  CAN_Frame_Init();
}

void loop(void)
{

  str_msg.data = hello;
  chatter.publish(&str_msg);

  nh.spinOnce();
  sendEngineFrame();
  sendASSstatusFrame();
  HAL_Delay(100);
}

void HAL_TIM_PeriodElapsedCallback (TIM_HandleTypeDef * htim){
	time_ms++;
	if(htim->Instance == TIM14)
	{
//		// Sending EngineDebug
//		if(time_ms % ENGINE_DEBUG_FREQUENCY_MS == 0){
//			sendEngineDebugMsg();
//		}

		// Sending OdometryMsg
		if(time_ms % ODOMETRY_PUBLISH_FREQUENCY_MS == 0)
		{
			odomSeq++;
			sendOdometryMsg(odomSeq);
		}
		// LED blinking and time reset
		if(time_ms % (CORRECT_WORK_BLINKING_FREQUENCY_MS/8) == 0)
			HAL_GPIO_TogglePin(LD2_GPIO_Port, LD2_Pin);

//		if(time_ms % Driving_dynamic_I_ID_period)
//			sendEngineFrame();
//
//		if(time_ms % AS_CORE2_STATUS_PERIOD)
//			sendASSstatusFrame();
	}
}
