/*
 * can_communication.cpp
 *
 *  Created on: Apr 20, 2021
 *      Author: Aayli
 */


#include "can.h"
#include "gpio.h"
#include "can_communication.h"

#include "CAN_FIFO.h"
#include "CAN_LIB.h"
#include "CAN_LIB_HW.h"
#include "CAN_LIB_STR.h"
#include "CAN_value_types.h"
#include "CAN_CONFIG.h"

static can_frame RR_Wheel_Frame;
static can_frame RL_Wheel_Frame;

static can_frame Driving_dynamic_I_CANmsg;
static can_value Driving_dynamic_I_Value;

static can_frame Msg_ASStatus;
static can_value Msg_ASStatus_Value;


float engineRPM = 0;
uint16_t pedalValue = 0;
uint16_t RR_wheel_encoder_ticks_delta = 0;
uint16_t RL_wheel_encoder_ticks_delta = 0;
uint8_t RR_wheel_encoder_last_can_data = 0;
uint8_t RL_wheel_encoder_last_can_data = 0;

void CAN_Frame_Init(void){

	CAN_Init();
	// Probably redundant
	CAN_InitFrame(&RR_Wheel_Frame,c_RR_WHL_SPEED_ID,c_RR_WHL_SPEED_PERIOD,c_RR_WHL_SPEED_DLC);
	CAN_InitFrame(&RL_Wheel_Frame,c_RL_WHL_SPEED_ID,c_RL_WHL_SPEED_PERIOD,c_RL_WHL_SPEED_DLC);

	//	CAN_InitFrame(&Main_CANmsg,AS_CORE2_MAIN_CONTROL_ID,AS_CORE2_MAIN_CONTROL_PERIOD,AS_CORE2_MAIN_CONTROL_DLC);
	//	CAN_InitValue(&BAMO_Frame, BABO_Value, bit_ofs, 1, 1, 0, type);
	//	CAN_WriteValueFloat(&Main_CANmsg, 10);

	CAN_InitFrame(&Driving_dynamic_I_CANmsg, Driving_dynamic_I_ID, Driving_dynamic_I_ID_period, Driving_dynamic_I_DLC);
	CAN_InitValue(&Driving_dynamic_I_CANmsg, &Driving_dynamic_I_Value, Motor_moment_target_OFS*8, 1, 1, 0, Motor_moment_type);

	CAN_InitFrame(&Msg_ASStatus, AS_CORE2_STATUS_ID, AS_CORE2_STATUS_PERIOD, AS_CORE2_STATUS_DLC);
	CAN_InitValue(&Msg_ASStatus, &Msg_ASStatus_Value, AS_CORE2_STATUS_AMI_BYTE_OFS*8, 1, 1, 0, AS_CORE2_STATUS_AMI_VALUE_TYPE);

	CAN_SetRxCallback(CAN_Read_Interupt);
}


void CAN_Read_Interupt(struct can_frame * frame){
	switch(frame->core.id){

		case c_RR_WHL_SPEED_ID:{
			uint8_t ticks_data = frame->core.data[2];
			update_wheel_encoder_ticks(&RR_wheel_encoder_ticks_delta, &RR_wheel_encoder_last_can_data, ticks_data);
			break;
		}
		case c_RL_WHL_SPEED_ID:{
			uint8_t ticks_data = frame->core.data[2];
			update_wheel_encoder_ticks(&RL_wheel_encoder_ticks_delta, &RL_wheel_encoder_last_can_data, ticks_data);
			break;
		}
		case BAMOCAR_TX_ID:{
			if(frame->core.data[0] == 0x30)
			{
				int16_t value = (frame->core.data[1] | (frame->core.data[0]));
				engineRPM = float(-value/7.281555f);
				engineRPM = engineRPM * 0.0207836;
			}
			break;
		}
		case PEDALS_ID:{
			pedalValue = frame->core.data[PEDALS_ACC_VALUE_BYTE_OFS];
			break;
		}
	}
}

void update_wheel_encoder_ticks(uint16_t* varPtr, uint8_t* previousCanDataPtr, uint8_t currentCanData)
{
	uint8_t ticksDelta;
	uint8_t uint8_max = 255;
	if(currentCanData < *previousCanDataPtr)
	{
		ticksDelta = (uint8_max - *previousCanDataPtr) + currentCanData;
	}
	else
	{
		ticksDelta = currentCanData - *previousCanDataPtr;
	}
	*varPtr += ticksDelta;
	*previousCanDataPtr = currentCanData;
}

void sendEngineFrame(){
	CAN_WriteValueFloat(&Driving_dynamic_I_Value, 10);
	CAN_SendFrame(&Driving_dynamic_I_CANmsg);
}

void sendASSstatusFrame(){
	CAN_WriteValueFloat(&Msg_ASStatus_Value, 0);
	CAN_SendFrame(&Msg_ASStatus);
}


