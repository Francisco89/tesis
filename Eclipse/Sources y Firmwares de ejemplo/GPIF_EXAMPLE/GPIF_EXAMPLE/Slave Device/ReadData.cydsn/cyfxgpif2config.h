/*
 * Project Name: ReadData.cyfx
 * Time : 02/28/2012 14:32:46
 * Device Type: FX3
 * Project Type: GPIF2
 *
 *
 *
 *
 * This is a generated file and should not be modified
 * This file need to be included only once in the firmware
 * This file is generated by Gpif2 designer tool version - 1.0.707.0
 * 
 */

#ifndef _INCLUDED_CYFXGPIF2CONFIG_
#define _INCLUDED_CYFXGPIF2CONFIG_
#include "cyu3types.h"
#include "cyu3gpif.h"

/* Summary
   Number of states in the state machine
 */
#define CY_NUMBER_OF_STATES 5

/* Summary
   Mapping of user defined state names to state indices
 */
#define RESET 0
#define IDLE 1
#define WRITE_START 2
#define WRITE 3
#define W4FW 4


/* Summary
   Macros for pre alphas
 */
#define ALPHA_RESET 0x0


/* Summary
   Transition function values which have to be stored GPIF II transition function registers.
 */
uint16_t CyFxGpifTransition[]  = {
    0x0000, 0x8888, 0x5555, 0xFFFF
};

/* Summary
   Table containing the transition information for various states. 
   This table has to be stored in the WAVEFORM Registers.
   This array consists of non-replicated waveform descriptors acts as a 
   waveform table. 
 */
CyU3PGpifWaveData CyFxGpifWavedata[]  = {
    {{0x1E702001,0x00000000,0x80000000},{0x00000000,0x00000000,0x00000000}},
    {{0x2E738102,0x00000100,0x80000000},{0x00000000,0x00000000,0x00000000}},
    {{0x3E739C03,0x20000400,0x80000800},{0x00000000,0x00000000,0x00000000}},
    {{0x2E739104,0x00000000,0x80000000},{0x00000000,0x00000000,0x00000000}}
};

/* Summary
   Table that maps state indices to the descriptor table indices.
 */
uint8_t CyFxGpifWavedataPosition[]  = {
    0,1,2,3,0
};

/* Summary
   GPIF II configuration register values.
 */
uint32_t CyFxGpifRegValue[]  = {
    0x80008210,  /*  PIB_GPIF_CONFIG */
    0x00000067,  /*  PIB_GPIF_BUS_CONFIG */
    0x00000000,  /*  PIB_GPIF_BUS_CONFIG2 */
    0x00000046,  /*  PIB_GPIF_AD_CONFIG */
    0x00000000,  /*  PIB_GPIF_STATUS */
    0x00000000,  /*  PIB_GPIF_INTR */
    0x00000000,  /*  PIB_GPIF_INTR_MASK */
    0x00000082,  /*  PIB_GPIF_SERIAL_IN_CONFIG */
    0x00000782,  /*  PIB_GPIF_SERIAL_OUT_CONFIG */
    0x00000140,  /*  PIB_GPIF_CTRL_BUS_DIRECTION */
    0x0000FFFF,  /*  PIB_GPIF_CTRL_BUS_DEFAULT */
    0x0000001F,  /*  PIB_GPIF_CTRL_BUS_POLARITY */
    0x00000000,  /*  PIB_GPIF_CTRL_BUS_TOGGLE */
    0x00000000,  /*  PIB_GPIF_CTRL_BUS_SELECT */
    0x00000000,  /*  PIB_GPIF_CTRL_BUS_SELECT */
    0x00000000,  /*  PIB_GPIF_CTRL_BUS_SELECT */
    0x00000000,  /*  PIB_GPIF_CTRL_BUS_SELECT */
    0x00000001,  /*  PIB_GPIF_CTRL_BUS_SELECT */
    0x00000000,  /*  PIB_GPIF_CTRL_BUS_SELECT */
    0x00000000,  /*  PIB_GPIF_CTRL_BUS_SELECT */
    0x00000000,  /*  PIB_GPIF_CTRL_BUS_SELECT */
    0x00000000,  /*  PIB_GPIF_CTRL_BUS_SELECT */
    0x00000000,  /*  PIB_GPIF_CTRL_BUS_SELECT */
    0x00000000,  /*  PIB_GPIF_CTRL_BUS_SELECT */
    0x00000000,  /*  PIB_GPIF_CTRL_BUS_SELECT */
    0x00000000,  /*  PIB_GPIF_CTRL_BUS_SELECT */
    0x00000000,  /*  PIB_GPIF_CTRL_BUS_SELECT */
    0x00000000,  /*  PIB_GPIF_CTRL_BUS_SELECT */
    0x00000000,  /*  PIB_GPIF_CTRL_BUS_SELECT */
    0x00000006,  /*  PIB_GPIF_CTRL_COUNT_CONFIG */
    0x00000000,  /*  PIB_GPIF_CTRL_COUNT_RESET */
    0x0000FFFF,  /*  PIB_GPIF_CTRL_COUNT_LIMIT */
    0x0000010A,  /*  PIB_GPIF_ADDR_COUNT_CONFIG */
    0x00000000,  /*  PIB_GPIF_ADDR_COUNT_RESET */
    0x0000FFFF,  /*  PIB_GPIF_ADDR_COUNT_LIMIT */
    0x00000000,  /*  PIB_GPIF_STATE_COUNT_CONFIG */
    0x0000FFFF,  /*  PIB_GPIF_STATE_COUNT_LIMIT */
    0x0000010A,  /*  PIB_GPIF_DATA_COUNT_CONFIG */
    0x00000000,  /*  PIB_GPIF_DATA_COUNT_RESET */
    0x0000FFFF,  /*  PIB_GPIF_DATA_COUNT_LIMIT */
    0x00000000,  /*  PIB_GPIF_CTRL_COMP_VALUE */
    0x00000000,  /*  PIB_GPIF_CTRL_COMP_MASK */
    0x00000000,  /*  PIB_GPIF_DATA_COMP_VALUE */
    0x00000000,  /*  PIB_GPIF_DATA_COMP_MASK */
    0x00000000,  /*  PIB_GPIF_ADDR_COMP_VALUE */
    0x00000000,  /*  PIB_GPIF_ADDR_COMP_MASK */
    0x00000000,  /*  PIB_GPIF_DATA_CTRL */
    0x00000000,  /*  PIB_GPIF_INGRESS_DATA */
    0x00000000,  /*  PIB_GPIF_INGRESS_DATA */
    0x00000000,  /*  PIB_GPIF_INGRESS_DATA */
    0x00000000,  /*  PIB_GPIF_INGRESS_DATA */
    0x00000000,  /*  PIB_GPIF_EGRESS_DATA */
    0x00000000,  /*  PIB_GPIF_EGRESS_DATA */
    0x00000000,  /*  PIB_GPIF_EGRESS_DATA */
    0x00000000,  /*  PIB_GPIF_EGRESS_DATA */
    0x00000000,  /*  PIB_GPIF_INGRESS_ADDRESS */
    0x00000000,  /*  PIB_GPIF_INGRESS_ADDRESS */
    0x00000000,  /*  PIB_GPIF_INGRESS_ADDRESS */
    0x00000000,  /*  PIB_GPIF_INGRESS_ADDRESS */
    0x00000000,  /*  PIB_GPIF_EGRESS_ADDRESS */
    0x00000000,  /*  PIB_GPIF_EGRESS_ADDRESS */
    0x00000000,  /*  PIB_GPIF_EGRESS_ADDRESS */
    0x00000000,  /*  PIB_GPIF_EGRESS_ADDRESS */
    0x80010400,  /*  PIB_GPIF_THREAD_CONFIG */
    0x80010401,  /*  PIB_GPIF_THREAD_CONFIG */
    0x80010402,  /*  PIB_GPIF_THREAD_CONFIG */
    0x80010403,  /*  PIB_GPIF_THREAD_CONFIG */
    0x00000000,  /*  PIB_GPIF_LAMBDA_STAT */
    0x00000000,  /*  PIB_GPIF_ALPHA_STAT */
    0x00000000,  /*  PIB_GPIF_BETA_STAT */
    0x00000000,  /*  PIB_GPIF_WAVEFORM_CTRL_STAT */
    0x00000000,  /*  PIB_GPIF_WAVEFORM_SWITCH */
    0x00000000,  /*  PIB_GPIF_WAVEFORM_SWITCH_TIMEOUT */
    0x00000000,  /*  PIB_GPIF_CRC_CONFIG */
    0x00000000,  /*  PIB_GPIF_CRC_DATA */
    0xFFFFFFF1  /*  PIB_GPIF_BETA_DEASSERT */
};

/* Summary
   This structure holds configuration inputs for the GPIF II. 
 */
const CyU3PGpifConfig_t CyFxGpifConfig  = {
    (uint16_t)(sizeof(CyFxGpifWavedataPosition)/sizeof(uint8_t)),
    CyFxGpifWavedata,
    CyFxGpifWavedataPosition,
    (uint16_t)(sizeof(CyFxGpifTransition)/sizeof(uint16_t)),
    CyFxGpifTransition,
    (uint16_t)(sizeof(CyFxGpifRegValue)/sizeof(uint32_t)),
    CyFxGpifRegValue
};

#endif   /* _INCLUDED_CYFXGPIF2CONFIG_ */