#ifdef __cplusplus
 extern "C" {
#endif

/******************BMS_MASTER********************/
/////////////// BMS CONTROL FRAME ///////////////////
#define HVPM_BMS_CONTROL_ID                     0x178
#define HVPM_BMS_CONTROL_PERIOD                 10
#define HVPM_BMS_CONTROL_DLC                    3
/////////////// BMS STATE REQ FRAME ////////////////
#define HVPM_NM_MASTER_REQ_ID                   0x38
#define HVPM_NM_MASTER_REQ_PERIOD               100
#define HVPM_NM_MASTER_REQ_DLC                  2
////////////// BMS SLAVE REQ FRAME //////////////////
#define BMS_NM_SLAVE_REQ_ID                     0x421
#define BMS_NM_SLAVE_REQ_PERIOD                 100
#define BMS_NM_SLAVE_REQ_DLC                    2
//////////////// BMS VOLATGE FRAME //////////////////
#define BMS_VOLT_ID                             0x6CE
#define BMS_VOLT_PERIOD                         10
#define BMS_VOLT_DLC                            8
//////////////// BMS CURRENT FRAME //////////////////
#define BMS_CURRENT_ID                          0x46E
#define BMS_CURRENT_PERIOD                      10
#define BMS_CURRENT_DLC                         4
/////////////// BMS CELL TEMP FRAME //////////////////
#define BMS_CELLVOLT_ID                         0x5CE
#define BMS_CELLVOLT_PERIOD                     10
#define BMS_CELLVOLT_DLC                        6
////////////// BMS CELL VOLT FRAME ///////////////////
#define BMS_CELLTEMP_ID                         0x6BE
#define BMS_CELLTEMP_PERIOD                     1000
#define BMS_CELLTEMP_DLC                        8
//////////// BMS ERROR FRAME //////////////////////////
#define BMS_ERRORMASK_ID                        0x44F
#define BMS_ERRORMASK_PERIOD                    10
#define BMS_ERRORMASK_DLC                       8
//////////// BMS GENERAL FRAME ///////////////////////
#define BMS_GENERAL_ID                          0x44E
#define BMS_GENERAL_PERIOD                      10
#define BMS_GENERAL_DLC                         4
//////////// UNUSED FRAMES ///////////////////////////
#define BMS_MODTEMP_ID                          0x6DF
#define BMS_POWER_PEAK                          0x5DF
#define BMS_SOC_ID                              0x6DE
#define BMS_ISOMON_ID                           0x5CF
#define BMS_POWER_CONTNS                        0x5DE
////////////////////////////////////////////////////
/**********************************************/

/***************** BAMOCAR ************************/
#define BAMOCAR_RX_ID                           0x201
#define BAMOCAR_TX_ID                           0x181
/**********************************************/

/////////// LV BMS GENERAL FRAME /////////////////
#define LVBMS_GENERAL_ID                        0x700
#define LVBMS_GENERAL_PERIOD                    200
#define LVBMS_GENERAL_DLC                       8

#define LVBMS_CURR_A_BIT_OFS                    0
#define LVBMS_CURR_A_VALUE_TYPE                 _int8_t

#define LVBMS_CURR_MA_BIT_OFS                   8
#define LVBMS_CURR_MA_VALUE_TYPE                _int16_t
#define LVBMS_CURR_MA_DIV                       10

#define LVBMS_VOLT_EXT_BIT_OFS                  24
#define LVBMS_VOLT_EXT_VALUE_TYPE               _uint16_t
#define LVBMS_VOLT_EXT_DIV                      1000

#define LVBMS_VOLT_INT_BIT_OFS                  40
#define LVBMS_VOLT_INT_VALUE_TYPE               _uint16_t
#define LVBMS_VOLT_INT_DIV                      1000

#define LVBMS_STATE_BIT_OFS                     56
#define LVBMS_STATE_VALUE_TYPE               _uint8_t
#define LVBMS_STATE_BAT_DISCONNECTED			1
#define LVBMS_STATE_BAT_CONNECTED				2

/////////////////////////////////////////////////////
/////////// LV BMS CELLS FRAME ///////////////////////
#define LVBMS_CELLS_ID                          0x701
#define LVBMS_CELLS_PERIOD                      200
#define LVBMS_CELLS_DLC                         8

#define LVBMS_CELLS_VOLT1_BIT_OFS               0
#define LVBMS_CELLS_VOLT2_BIT_OFS               13
#define LVBMS_CELLS_VOLT3_BIT_OFS               26
#define LVBMS_CELLS_VOLT_VALUE_TYPE             _uint13_t
#define LVBMS_CELLS_VOLT_DIV                    1000

#define LVBMS_CELLS_TEMP1_BIT_OFS               40
#define LVBMS_CELLS_TEMP2_BIT_OFS               48
#define LVBMS_CELLS_TEMP3_BIT_OFS               56
#define LVBMS_CELLS_TEMP_VALUE_TYPE             _int8_t
///////////////////////////////////////////////////
/////////// LV BMS CALLIB FRAME ///////////////////////
#define LVBMS_CALLIB_ID							0x702
#define LVBMS_CALLIB_PERIOD						0
#define LVBMS_CALLIB_DLC						8

#define LVBMS_CALLIB_V1_BIT_OFS					0
#define LVBMS_CALLIB_V2_BIT_OFS					14
#define LVBMS_CALLIB_V3_BIT_OFS					28
#define LVBMS_CALLIB_V4_BIT_OFS					42
#define LVBMS_CALLIB_VX_VALUE_TYPE				_uint14_t
#define LVBMS_CALLIB_VX_DIV						1000
//////////////////////////////////////////////////////
 /////////// LV BMS ERROR FRAME ///////////////////////
#define LVBMS_ERR_ID							0x703
#define LVBMS_ERR_PERIOD						200
#define LVBMS_ERR_DLC							2

#define LVBMS_ERR_VALUE_TYPE					_uint16_t

#define LVBMS_ERR_C1_UNDERV  					1<<0
#define LVBMS_ERR_C2_UNDERV  					1<<1
#define LVBMS_ERR_C3_UNDERV  					1<<2
#define LVBMS_ERR_C1_OVERV  					1<<3
#define LVBMS_ERR_C2_OVERV  					1<<4
#define LVBMS_ERR_C3_OVERV  					1<<5
#define LVBMS_ERR_C1_UNDERT 					1<<6
#define LVBMS_ERR_C2_UNDERT  					1<<7
#define LVBMS_ERR_C3_UNDERT  					1<<8
#define LVBMS_ERR_C1_OVERT  					1<<9
#define LVBMS_ERR_C2_OVERT  					1<<10
#define LVBMS_ERR_C3_OVERT  					1<<11
#define LVBMS_ERR_OVERCURRENT  					1<<12
 //////////////////////////////////////////////////////
/**************************************************/

/****************** Pedals ********************/
#define PEDALS_ID                               0x450
#define PEDALS_PERIOD                           20
#define PEDALS_DLC                              6
#define PEDALS_MULT                             1
#define PEDALS_DIV                              1
#define PEDALS_OFS                              0

#define PEDALS_BRAKE_VALUE_BYTE_OFS             0
#define PEDALS_BRAKE_VALUE_VALUE_TYPE           _uint16_t

#define PEDALS_BRAKE_STOP_BYTE_OFS              2
#define PEDALS_BRAKE_STOP_VALUE_TYPE            _uint8_t

/////////////////// 12bit value //////////////////////
#define PEDALS_ACC_VALUE_BYTE_OFS               3
#define PEDALS_ACC_VALUE_VALUE_TYPE             _uint16_t
/////////////////////////////////////////////////////

#define PEDALS_ACC_ERR_BYTE_OFS                 5
#define PEDALS_ACC_ERR_VALUE_TYPE               _uint8_t
/**********************************************/


/***************** MASTER ************************/
#define MASTER1_ID                              0x550
#define MASTER1_STATUS_PERIOD                   100
#define MASTER1_STATUS_DLC                      3

#define MASTER1_STATE_BYTE_OFS                  0
#define MASTER1_STATE_VALUE_TYPE                _uint8_t
#define MASTER1_STATE_INIT_val                  0
#define MASTER1_STATE_STANDBY_val               1
#define MASTER1_STATE_TSON_val                  2
#define MASTER1_STATE_RTDSOUND_val              3
#define MASTER1_STATE_DRIVE_val                 4
#define MASTER1_STATE_SHUTDOWN_val              5
#define MASTER1_STATE_ERROR_val                 6

#define MASTER1_ERRORS_BYTE_OFS                 1
#define MASTER1_ERRORS_VALUE_TYPE               _uint16_t
#define MASTER1_ERRORS_LATCHEDERR_mask          (1<<0)
#define MASTER1_ERRORS_BMSCOMM_mask             (1<<1)
#define MASTER1_ERRORS_BMSSTATE_mask            (1<<2)
#define MASTER1_ERRORS_BAMOCOMM_mask            (1<<3)
#define MASTER1_ERRORS_PEDALSCOMM_mask          (1<<4)
#define MASTER1_ERRORS_PEDALSPLAUS_mask         (1<<5)
#define MASTER1_ERRORS_SHUTDOWN_mask            (1<<6)


/******************* DASHBOARD *******************/
//////////////// DASH ///////////////////////////
#define DASH_ID                                0x650
#define DASH_PERIOD                             100
#define DASH_DLC                                2
#define DASH_MULT                               1
#define DASH_DIV                                1
#define DASH_OFS                                0

#define DASH_STATE1_BYTE_OFS                    0
#define DASH_STATE1_VALUE_TYPE                  _uint8_t
#define DASH_STATE1_PEDALSTERM_REQ_mask         (1<<0)
#define DASH_STATE1_DVMISSION_REQ_mask          (1<<1)

#define DASH_DVMISSION_BYTE_OFS                 1
#define DASH_DVMISSION_VALUE_TYPE               _uint8_t
#define DASH_DVMISSION_SKIPAD_val               1
#define DASH_DVMISSION_ACC_val                  2
#define DASH_DVMISSION_TRACKDRIVE_val           4
#define DASH_DVMISSION_AUTOCROSS_val            8
#define DASH_DVMISSION_MANUAL_val               16
#define DASH_DVMISSION_INSPECTION_val           32
#define DASH_DVMISSION_EBS_TEST_val             64

//////////////// DASH BUTTONS ///////////////////////////
#define DASH_BUTTON_ID                          0x651
#define DASH_BUTTON_PERIOD                      0
#define DASH_BUTTON_DLC                         1
#define DASH_BUTTON_MULT                        1
#define DASH_BUTTON_DIV                         1
#define DASH_BUTTON_OFS                         0

#define DASH_BUTTON_BYTE_OFS                    0
#define DASH_BUTTON_VALUE_TYPE                  _uint8_t
#define DASH_BUTTON_TS_ON_val                   1
#define DASH_BUTTON_START_val                   2
#define DASH_BUTTON_TS_ON_START_val             4
/////////////////////////////////////////////////

/*********** AUTONOMOUS SYSTEM ********************/

//////////////// AS_CORE2_STATUS //////////////////////

#define AS_CORE2_STATUS_ID                      0x480
#define AS_CORE2_STATUS_DLC                     2
#define AS_CORE2_STATUS_PERIOD                  100

#define AS_CORE2_STATUS_AMI_BYTE_OFS            0
#define AS_CORE2_STATUS_AMI_VALUE_TYPE          _uint8_t
#define AS_CORE2_STATUS_AMI_MANUAL_val          1
#define AS_CORE2_STATUS_AMI_READY_val           2
#define AS_CORE2_STATUS_AMI_DRIVING_val         4
#define AS_CORE2_STATUS_AMI_EMERGENCY_val       8
#define AS_CORE2_STATUS_AMI_FINISHED_val        16
#define AS_CORE2_STATUS_AMI_OFF_val             32

#define AS_CORE2_STATUS_MISSION_OFS          	1
#define AS_CORE2_STATUS_MISSION_VALUE_TYPE		_uint8_t
#define AS_CORE2_STATUS_MISSION_TRACKDRIVE		1
#define AS_CORE2_STATUS_MISSION_AUTOCROSS		2
#define AS_CORE2_STATUS_MISSION_SKIDPAD      	4
#define AS_CORE2_STATUS_MISSION_ACCELERATION  	8

//////////////// AS_CORE2_CONTROL ////////////////////

#define AS_CORE2_CONTROL_ID                     0x510
#define AS_CORE2_CONTROL_DLC                    3
#define AS_CORE2_CONTROL_PERIOD                 20

#define AS_CORE2_CONTROL_SPEED_BYTE_OFS         0
#define AS_CORE2_CONTROL_SPEED_VALUE_TYPE       _uint16_t

#define AS_CORE2_CONTROL_BRAKE_BYTE_OFS         2
#define AS_CORE2_CONTROL_BRAKE_VALUE_TYPE       _uint8_t

/***********DATA_LOGGER********************/

//////////////// DV_DYNAMIC_I //////////////////////
#define Driving_dynamic_I_ID                    0x500
#define Driving_dynamic_I_ID_period             100
#define Driving_dynamic_I_DLC                   8
#define Speed_actual_OFS                        0
#define Speed_target_OFS                        1
#define Speed_type                              _uint8_t
#define Steering_angle_type                     _int8_t
#define Steering_angle_actual_OFS               2
#define Steering_angle_angle_OFS                3
#define Brake_hydr_type                         _uint8_t
#define Brake_hydr_actual_OFS                   4
#define Brake_hydr_target_OFS                   5

#define Motor_moment_type                       _int8_t
#define Motor_moment_actual_OFS                 6
#define Motor_moment_target_OFS                 7

//////////////// DV_DYNAMIC_II //////////////////////

#define Driving_dynamic_II_ID                   0x501
#define Driving_dynamic_II_ID_period            100
#define Driving_dynamic_II_DLC                  6

#define Driving_dynamic_II_type                 _int16_t
#define Acceleration_longitudinal_BYTE_OFS      0
#define Acceleration_lateral_BYTE_OFS           2
#define Yaw_rate_BYTE_OFS                       4

////////////////// DV_SYSTEM_STATUS //////////////////

#define Dv_system_status_ID                     0x502
#define Dv_system_status_period                 100
#define Dv_system_status_DLC                    5

#define AS_state_BIT_OFS                        0
#define AS_state_off                            1
#define AS_state_ready                          2
#define AS_state_driving                        3
#define AS_state_emergency_brake                4
#define AS_state_finish                         5

#define EBS_status_BIT_OFS                      3
#define EBS_state_unavailable                   1
#define EBS_state_armed                         2
#define EBS_state_activated                     3

#define AMI_status_BIT_OFS                      5
#define AMI_state_acceleration                  1
#define AMI_state_skidpad                       2
#define AMI_state_trackdrive                    3
#define AMI_state_braketest                     4
#define AMI_state_inspection                    5
#define AMI_state_autocross                     6

#define Steering_state_BIT_OFS                  8

#define Service_brake_state_BIT_OFS            	9
#define Service_brake_state_disengaged          1
#define Service_brake_state_engaged             2
#define Service_brake_state_available           3

#define Lap_counter_BIT_OFS                     11

#define Cones_count_actuall_BIT_OFS             15
#define Cones_count_actuall_type                _uint8_t

#define Cones_count_all_BIT_OFS                 23
#define Cones_count_all_type                    _uint16_t


//////////////// AS_CORE2_MAIN ////////////////////

#define AS_CORE2_MAIN_CONTROL_ID           		0x520
#define AS_CORE2_MAIN_CONTROL_DLC          		1
#define AS_CORE2_MAIN_CONTROL_PERIOD       		200
#define AS_CORE2_MAIN_TYPE                 		_uint8_t
#define AS_CORE2_MAIN_TS_BUTTON_MASK       		(1<<0)
#define AS_CORE2_MAIN_BUZZER_MASK          		(1<<1)
//////////////////Right Wheels////////////////////////
#define c_RR_WHL_SPEED_ID           			0x380
#define c_RR_WHL_SPEED_BITOFFSET          		16	
#define c_RR_WHL_SPEED_PERIOD       			5
#define c_RR_WHL_SPEED_DLC				3
#define c_RR_WHL_SPEED_TYPE                 		_uint8_t

//////////////////Left Wheels////////////////////////
#define c_RL_WHL_SPEED_ID           			0x300
#define c_RL_WHL_SPEED_BITOFFSET          		16	
#define c_RL_WHL_SPEED_PERIOD       			5
#define c_RL_WHL_SPEED_DLC				3
#define c_RL_WHL_SPEED_TYPE                 		_uint8_t
#


////////////////// Another Sensors ////////////
#define Another_Sensor_DLC                      8
#define Another_Sensor_period                   100

#define Sensor_1_ID                             0x511
#define Sensor_2_ID                             0x512
#define Sensor_3_ID                             0x513
#define Sensor_4_ID                             0x514
#define Sensor_5_ID                             0x515


/******************** REMOTE EMERGENCY SYSTEM *************/
#define Node_ID                                0x011 // set by handbook

/////////////////////// Network Management Protocol MSG /////////////////
#define Status_ID                              0x000
#define Sync_ID                                0x080

#define Emergency_ID                           0x091 //(0x80+node_ID)

#define Timestamp_ID                           0x100

#define PDO_period                             30
#define Transmit_PDO_ID                        0x191 //(0x180+node_ID)
#define Receive_PDO_ID                         0x211 //(0x200+node_ID)

#define Transmit_SDO_ID                        0x591 //(0x580+node_ID)
#define Receive_SDO_ID                         0x611 //(0x600+node_ID)

#define NMT_ID                                 0x711 //(0x700+node ID)

#define Transmit_LSS_ID                        0x7E4
#define Receive_LSS_ID                         0x7E5

#ifdef __cplusplus
 }
#endif
