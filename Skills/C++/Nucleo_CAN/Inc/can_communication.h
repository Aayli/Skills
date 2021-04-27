/*
 * can_communication.h
 *
 *  Created on: Apr 20, 2021
 *      Author: Aayli
 */

#ifndef CAN_COMMUNICATION_H_
#define CAN_COMMUNICATION_H_

#ifdef __cplusplus
 extern "C" {
#endif

extern float engineRPM;
extern uint16_t pedalValue;
extern uint16_t RR_wheel_encoder_ticks_delta;
extern uint16_t RL_wheel_encoder_ticks_delta;

void CAN_Frame_Init(void);
void CAN_Read_Interupt(struct can_frame * frame);
void update_wheel_encoder_ticks(uint16_t* varPtr, uint8_t* previousCanDataPtr, uint8_t currentCanData);
void sendEngineFrame();
void sendASSstatusFrame();

#ifdef __cplusplus
}
#endif

#endif /* CAN_COMMUNICATION_H_ */
