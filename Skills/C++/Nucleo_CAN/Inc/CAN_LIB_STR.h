#pragma once

#include "stdint.h"
#include "CAN_value_types.h"

#define CAN_MAX_VALUE_NAME 50
#define CAN_MAX_FRAME_NUM 20


struct can_msg {

	uint8_t	isExtId;
	uint32_t id;
	uint32_t dlc;
	uint8_t data[8];
};

struct can_frame {

	struct can_msg core;
	uint16_t period;
	uint32_t tick_ms;
	uint8_t values_num;
};

struct can_value {

	struct can_frame* pFrame;
	uint8_t name[CAN_MAX_VALUE_NAME];
	uint8_t bit_ofs;
	uint16_t mult;
	uint16_t div;
	uint16_t ofs;
	enum can_value_type type;
};
