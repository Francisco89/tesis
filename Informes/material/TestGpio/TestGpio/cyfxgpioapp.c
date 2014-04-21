/*
 ## Cypress USB 3.0 Platform source file (cyfxgpioapp.c)
 ## ===========================
 ##
 ##  Copyright Cypress Semiconductor Corporation, 2010-2011,
 ##  All Rights Reserved
 ##  UNPUBLISHED, LICENSED SOFTWARE.
 ##
 ##  CONFIDENTIAL AND PROPRIETARY INFORMATION
 ##  WHICH IS THE PROPERTY OF CYPRESS.
 ##
 ##  Use of this file is governed
 ##  by the license agreement included in the file
 ##
 ##     <install>/license/license.txt
 ##
 ##  where <install> is the Cypress software
 ##  installation root directory path.
 ##
 ## ===========================
*/

/* This file implements a simple GPIO application example. */

/* This example illustrates the use of the FX3 firmware APIs to implement
 * a simple GPIO application example.
 *
 * The example illustrates the usage of simple GPIO API to set and get 
 * the status of the pin and the usage of GPIO interrupts.
 *
 * The example uses GPIO 21 as output. It toggles this pin ON and OFF 
 * at an interval of 2s.
 *
 * GPIO 45 is used as the input GPIO. Interrupts are enabled and a 
 * callback is registered for the GPIO edge interrupts both positive 
 * and negative edges.
 *
 * GPIO 21 (CTL4=P6.3) is located at pin 2 of the jumper J100 on the DVK board.
 * GPIO 45 is located on the DVK board at the test point TP13 (not connected to
 * Samtec)
 */

#include <cyu3system.h>
#include <cyu3os.h>
#include <cyu3error.h>
#include <cyu3gpio.h>
#include <cyu3uart.h>

#define CY_FX_GPIOAPP_THREAD_STACK       (0x0400)   /* GPIO application thread stack size */
#define CY_FX_GPIOAPP_THREAD_PRIORITY    (8)        /* GPIO application thread priority */

#define CY_FX_GPIOAPP_GPIO_HIGH_EVENT    (1 << 0)   /* GPIO high event */
#define CY_FX_GPIOAPP_GPIO_LOW_EVENT     (1 << 1)   /* GPIO low event */

CyU3PThread gpioOutputThread;   /* GPIO thread structure */
CyU3PThread gpioInputThread;    /* GPIO thread structure */
CyU3PEvent glFxGpioAppEvent;    /* GPIO input event group. */

#define INT_PIN		45  /* GPIO 45 es la entrada de interrupción */
#define OUT_PIN		19  /* GPIO 19 es la salida para medir la latencia de la interrupción */
#define LED_PIN		17	/* GPIO 17 es el ándodo del LED de 3mm */


/* Application error handler. */
void CyFxAppErrorHandler (CyU3PReturnStatus_t apiRetStatus    /* API return status */ )
{
    /* Application failed with the error code apiRetStatus */
    /* Add custom debug or recovery actions here */
    for (;;) /* Loop indefinitely */
    {
        CyU3PThreadSleep (100); /* Thread sleep : 100 ms */
    }
}

/* Initialize the debug module with UART. */
CyU3PReturnStatus_t CyFxDebugInit (void)
{
    CyU3PReturnStatus_t status = CY_U3P_SUCCESS;

    uint16_t majorVer;      /* Major version number for the release */
    uint16_t minorVer;      /* Minor version number for the release */
    uint16_t patchNo;        /* Patch version for the release */
    uint16_t buildNo;         /* The build number for the release */

    /* Initialize and configure the UART for logging. */
    status = CyU3PUartInit ();
    if ( status != CY_U3P_SUCCESS) return status;

    CyU3PUartConfig_t uartConfig;
    CyU3PMemSet ((uint8_t *)&uartConfig, 0, sizeof (uartConfig));
    uartConfig = (CyU3PUartConfig_t) { .txEnable=CyTrue,
    				  	  	  	  	   .rxEnable=CyFalse,
    				  	  	  	  	   .flowCtrl=CyFalse,
    				  	  	  	  	   .isDma=CyTrue,
    				  	  	  	  	   .baudRate=CY_U3P_UART_BAUDRATE_115200,
    				  	  	  	  	   .stopBit=CY_U3P_UART_ONE_STOP_BIT,
    				  	  	  	  	   .parity=CY_U3P_UART_NO_PARITY
    				 	 	 	 	 };
    status = CyU3PUartSetConfig (&uartConfig, NULL);
    if (status != CY_U3P_SUCCESS) return status;

    /* Set the DMA for an infinity transfer */
    status = CyU3PUartTxSetBlockXfer (0xFFFFFFFF);
    if (status != CY_U3P_SUCCESS) return status;

    /* Start the debug module for printing log messages. */
    status = CyU3PDebugInit (CY_U3P_LPP_SOCKET_UART_CONS, 8);

    /* Desactivo el envio de preambulo */
    CyU3PDebugPreamble(CyFalse);

    /* Show API Version */
    status = CyU3PSysGetApiVersion(&majorVer, &minorVer, &patchNo, &buildNo);
	if (status != CY_U3P_SUCCESS) return status;

	status = CyU3PDebugPrint(4,"\n\rFX3 API version %d.%d patch=%d build=%d\n\r", majorVer, minorVer, patchNo, buildNo);
    return status;
}

/* GPIO interrupt callback handler. This is received from
 * the interrupt context. So DebugPrint API is not available
 * from here. Set an event in the event group so that the
 * GPIO thread can print the event information. */
void CyFxGpioIntrCb (uint8_t gpioId /* Indicates the pin that triggered the interrupt */ )
{
    CyBool_t gpioValue = CyFalse;

    /* Get the status of the pin */
    CyU3PReturnStatus_t apiRetStatus = CyU3PGpioSimpleGetValue (gpioId, &gpioValue);
    CyU3PGpioSimpleSetValue (19, gpioValue);
    if (apiRetStatus == CY_U3P_SUCCESS)
    {   /* Upon status of the pin Set GPIO high/low event*/
    	CyU3PEventSet(&glFxGpioAppEvent, (gpioValue == CyTrue)? CY_FX_GPIOAPP_GPIO_HIGH_EVENT:CY_FX_GPIOAPP_GPIO_LOW_EVENT,
    	                    CYU3P_EVENT_OR);
    }
}

void CyFxGpioInit (void)
{
	/* Initialize the GPIO module {fastClkDiv, slowClkDiv, halfDiv, simpleDiv, clkSrc} */
    CyU3PGpioClock_t gpioClock={2, 0, 0, CY_U3P_GPIO_SIMPLE_DIV_BY_2, CY_U3P_SYS_CLK};
    // gpioConfig;
    CyU3PReturnStatus_t apiRetStatus = CY_U3P_SUCCESS;

    apiRetStatus = CyU3PGpioInit(&gpioClock, CyFxGpioIntrCb);
    if (apiRetStatus != 0) /* Error Handling */
    {
        CyU3PDebugPrint (4, "CyU3PGpioInit failed, error code = %d\n", apiRetStatus);
        CyFxAppErrorHandler(apiRetStatus);
    }

    /* Configure GPIO 45 as input with interrupt enabled for both edges */
    CyU3PGpioSimpleConfig_t gpioConfig = {CyTrue, // outValue
    									  CyFalse, // driveLowEn
    									  CyFalse, // driveHighEn
    									  CyTrue, // inputEn
    									  CY_U3P_GPIO_INTR_BOTH_EDGE // intrMode
    									  };
    apiRetStatus = CyU3PGpioSetSimpleConfig(INT_PIN, &gpioConfig);
    if (apiRetStatus != CY_U3P_SUCCESS) /* Error handling */
    {
        CyU3PDebugPrint (4, "CyU3PGpioSetSimpleConfig failed, error code = %d\n", apiRetStatus);
        CyFxAppErrorHandler(apiRetStatus);
    }
    CyU3PDebugPrint(4,"Entrada de interrupcion en GPIO%d\n\r",INT_PIN);

    /* Override GPIO 21 as this pin is associated with GPIF Control signal.
     * The IO cannot be selected as GPIO by CyU3PDeviceConfigureIOMatrix call
     * as it is part of the GPIF IOs. Override API call must be made with
     * caution as this will change the functionality of the pin. If the IO
     * line is used as part of GPIF and is connected to some external device,
     * then the line will no longer behave as a GPIF IO.. Here CTL4 line is
     * not used and so it is safe to override.  */
    apiRetStatus = CyU3PDeviceGpioOverride (LED_PIN, CyTrue);
    if (apiRetStatus != 0) /* Error Handling */
    {
        CyU3PDebugPrint (4, "CyU3PDeviceGpioOverride failed, error code = %d\n\r", apiRetStatus);
        CyFxAppErrorHandler(apiRetStatus);
    }

    /* Configure GPIO 21 as output to drive a LED3mm (anode is GPIO, cathode is GND)
     *   								 {outValue, driveLowEn, driveHighEn, inputEn, intrMode}*/
    gpioConfig = (CyU3PGpioSimpleConfig_t){CyFalse, // outValue
    							           CyTrue, // driveLowEn
    							           CyTrue, // driveHighEn
    							           CyFalse, // inputEn
    							           CY_U3P_GPIO_NO_INTR // intrMode
    							           };
    apiRetStatus = CyU3PGpioSetSimpleConfig(LED_PIN, &gpioConfig);
    if (apiRetStatus != CY_U3P_SUCCESS) /* Error handling */
    {
        CyU3PDebugPrint (4, "CyU3PGpioSetSimpleConfig failed, error code = %d\n", apiRetStatus);
        CyFxAppErrorHandler(apiRetStatus);
    }
    CyU3PDebugPrint(4,"LED indicador en GPIO%d\n\r",LED_PIN);

    // Configure GPIO19 (CTL2=P6.4) as output to measure latency of interrupt on GPIO45
    apiRetStatus = CyU3PDeviceGpioOverride(OUT_PIN, CyTrue);
    if (apiRetStatus != 0) /* Error Handling */
    {
        CyU3PDebugPrint (4, "CyU3PDeviceGpioOverride failed, error code = %d\n", apiRetStatus);
        CyFxAppErrorHandler(apiRetStatus);
    }

    /* Configure GPIO 19 as output   {outValue, driveLowEn, driveHighEn, inputEn, intrMode}*/
    gpioConfig=(CyU3PGpioSimpleConfig_t){CyTrue, // outValue
    									 CyTrue, // driveLowEn
    									 CyTrue, // driveHighEn
    									 CyFalse, // inputEn
    									 CY_U3P_GPIO_NO_INTR // intrMode
    									 };
    apiRetStatus = CyU3PGpioSetSimpleConfig(OUT_PIN, &gpioConfig);
    if ( apiRetStatus != CY_U3P_SUCCESS) /* Error handling */
    {
        CyU3PDebugPrint (4, "CyU3PGpioSetSimpleConfig failed, error code = %d\n", apiRetStatus);
        CyFxAppErrorHandler(apiRetStatus);
    }
    CyU3PDebugPrint(4,"Salida de medicion de latencia de interrupcion en GPIO%d\n\r",OUT_PIN);

    /* Configuracion de corriente de salida */
    CyU3PDriveStrengthState_t gpio_fanout=CY_U3P_DS_QUARTER_STRENGTH;
    apiRetStatus = CyU3PSetGpioDriveStrength(gpio_fanout);
    if ( apiRetStatus != CY_U3P_SUCCESS) /* Error handling */
    {
        CyU3PDebugPrint (4, "CyU3PSetGpioDriveStrength failed, error code = %d\n", apiRetStatus);
        CyFxAppErrorHandler(apiRetStatus);
    }
    CyU3PDebugPrint(4,"GPIOs capacidad de corriente %d\n\r",gpio_fanout);
}

/* Entry function for the gpioOutputThread */
void GpioOutputThread_Entry (uint32_t input)
{
    CyU3PReturnStatus_t apiRetStatus = CY_U3P_SUCCESS;
    uint8_t gpioId=LED_PIN;
    CyBool_t gpioValue;
    apiRetStatus = CyFxDebugInit(); /* Initialize Debug module */
    if (apiRetStatus != CY_U3P_SUCCESS) /* Error handling */
    {
    	CyU3PDebugPrint (4, "Debug module initialization failed, error code = %d\n", apiRetStatus);
        CyFxAppErrorHandler(apiRetStatus);
    }

    CyFxGpioInit (); /* Initialize GPIO module. */

    for (;;) /* forever */
    {
        /* Get the GPIO value and toggle it*/
    	apiRetStatus = CyU3PGpioGetValue(gpioId, &gpioValue);
    	if (apiRetStatus != CY_U3P_SUCCESS) /* Error handling */
    	{
            CyU3PDebugPrint (4, "CyU3PGpioGetValue failed, error code = %d\n", apiRetStatus);
    	    CyFxAppErrorHandler(apiRetStatus);
    	}
        apiRetStatus = CyU3PGpioSetValue(gpioId, !gpioValue);
        if (apiRetStatus != CY_U3P_SUCCESS) /* Error handling */
        {
            CyU3PDebugPrint (4, "CyU3PGpioSetValue failed, error code = %d\n", apiRetStatus);
            CyFxAppErrorHandler(apiRetStatus);
        }
        CyU3PThreadSleep(3000); /* Wait for 1000 milliseconds */
    }
}

/* Entry function for the gpioInputThread */
void GpioInputThread_Entry (uint32_t input)
{
    uint32_t eventFlag;
    CyU3PReturnStatus_t txApiRetStatus = CY_U3P_SUCCESS;

    for (;;)
    {
        /* Wait for a GPIO event */
        txApiRetStatus = CyU3PEventGet (&glFxGpioAppEvent,
                (CY_FX_GPIOAPP_GPIO_HIGH_EVENT | CY_FX_GPIOAPP_GPIO_LOW_EVENT),
                CYU3P_EVENT_OR_CLEAR, &eventFlag, CYU3P_WAIT_FOREVER);
        if (txApiRetStatus == CY_U3P_SUCCESS)
        {
            if (eventFlag & CY_FX_GPIOAPP_GPIO_HIGH_EVENT)
            {
                /* Print the status of the pin */
                CyU3PDebugPrint (4, "GPIO 45 is set to high\n\r");
            }
            else
            {
                /* Print the status of the pin */
                CyU3PDebugPrint (4, "GPIO 45 is set to low\n\r");
            }
        }
    }
}

/* Application define function which creates the threads. */
void CyFxApplicationDefine (void)
{
    void *ptr = NULL;
    uint32_t retThrdCreate = CY_U3P_SUCCESS;

    ptr = CyU3PMemAlloc (CY_FX_GPIOAPP_THREAD_STACK); /* Allocate the memory for the threads */

    /* Create the thread for the application */
    retThrdCreate = CyU3PThreadCreate (&gpioOutputThread,        /* GPIO Example App Thread structure */
                          "OUT_PIN:GPIO_simple_output",          /* Thread ID and Thread name */
                          GpioOutputThread_Entry,                /* GPIO Example App Thread Entry function */
                          0,                                     /* No input parameter to thread */
                          ptr,                                   /* Pointer to the allocated thread stack */
                          CY_FX_GPIOAPP_THREAD_STACK,            /* Thread stack size */
                          CY_FX_GPIOAPP_THREAD_PRIORITY,         /* Thread priority */
                          CY_FX_GPIOAPP_THREAD_PRIORITY,         /* Pre-emption threshold for the thread. */
                          CYU3P_NO_TIME_SLICE,                   /* No time slice for the application thread */
                          CYU3P_AUTO_START                       /* Start the Thread immediately */
                          );

    if (retThrdCreate != 0) /* Check the return code */
    {
        /* Thread creation failed with the error code retThrdCreate */

        /* Add custom recovery or debug actions here */

        /* Application cannot continue */
        /* Loop indefinitely */
        while(1);
    }

    ptr = CyU3PMemAlloc (CY_FX_GPIOAPP_THREAD_STACK); /* Allocate the memory for the threads */

    /* Create the thread for the application */
    retThrdCreate = CyU3PThreadCreate (&gpioInputThread,	/* GPIO Example App Thread structure */
                          "TEST_PIN:GPIO_simple_input",           /* Thread ID and Thread name */
                          GpioInputThread_Entry,            /* GPIO Example App Thread entry function */
                          0,                                /* No input parameter to thread */
                          ptr,                              /* Pointer to the allocated thread stack */
                          CY_FX_GPIOAPP_THREAD_STACK,       /* Thread stack size */
                          CY_FX_GPIOAPP_THREAD_PRIORITY,    /* Thread priority */
                          CY_FX_GPIOAPP_THREAD_PRIORITY,    /* Pre-emption threshold for the thread */
                          CYU3P_NO_TIME_SLICE,              /* No time slice for the application thread */
                          CYU3P_AUTO_START                  /* Start the Thread immediately */
                          );

    if (retThrdCreate != 0)  /* Check the return code */
    {
        /* Thread creation failed with the error code retThrdCreate */

        /* Add custom recovery or debug actions here */

        /* Application cannot continue */
        /* Loop indefinitely */
        while(1);
    }

    /* Create GPIO application event group */
    retThrdCreate = CyU3PEventCreate(&glFxGpioAppEvent);
    if (retThrdCreate != 0)
    {
        /* Event group creation failed with the error code retThrdCreate */

        /* Add custom recovery or debug actions here */

        /* Application cannot continue */
        /* Loop indefinitely */
        while(1);
    }
}

/* Main function */
int main (void)
{
	/* Set system clocks */
	CyU3PSysClockConfig_t sys_clk={CyTrue,	// setSysClk400? 403.2MHz : 384MHz
								   2,	// cpuClkDiv (201.6 / 192 MHz)
								   2,	// dmaClkDiv
								   2,	// mmioClkDiv
								   CyTrue,	// useStandbyClk
								   (CyU3PSysClockSrc_t)CY_U3P_SYS_CLK // clkSrc
								};

	CyU3PReturnStatus_t status = CyU3PDeviceInit (&sys_clk); /* Initialize the device */
    if (status != CY_U3P_SUCCESS) goto handle_fatal_error;

    /* Initialize the caches. Enable both Instruction and Data Caches. */
    status = CyU3PDeviceCacheControl (CyTrue, // is Instruction Cache Enable
    								  CyTrue, // is Data Cache Enable
    								  CyTrue  // isDmaHandleDCache
    								  );
    if (status != CY_U3P_SUCCESS) goto handle_fatal_error;

    /* Configure the IO matrix for the device. On the FX3 DVK board,
     * the COM port is connected to the IO(53:56). This means that
     * either DQ32 mode should be selected or lppMode should be set
     * to UART_ONLY. Here we are choosing UART_ONLY configuration. */
    CyU3PIoMatrixConfig_t io_cfg;
    CyU3PMemSet ((uint8_t *)&io_cfg, 0, sizeof(io_cfg));
    io_cfg= (CyU3PIoMatrixConfig_t){ CyFalse, // isDQ32Bit
    								 CyTrue, // useUart
    								 CyFalse, // useI2C
    								 CyFalse, // useI2S
    								 CyFalse, // useSpi
    								 CyFalse, // s0Mode
    								 CyFalse, // s1Mode
    								 CY_U3P_IO_MATRIX_LPP_UART_ONLY, // lppMode
    					/* GPIO 45 is used as input pin. GPIO 21 is also used but cannot
    					* be selected here as it is part of the GPIF IOs (CTL4). Since
    					* this IO is not used, it can be overridden to become a GPIO by
    					* invoking the CyU3PDeviceGpioOverride call. */
    								 {0, 1<<(45%32)}, // gpioSimpleEn[2]
    								 {0, 0}, // gpioComplexEn[2]
    								};

    status = CyU3PDeviceConfigureIOMatrix (&io_cfg);
    if (status != CY_U3P_SUCCESS) goto handle_fatal_error;

    CyU3PKernelEntry (); /* This is a non returnable call for initializing the RTOS kernel */
    return 0; /* Dummy return to make the compiler happy */

handle_fatal_error:    /* Cannot recover from this error. */
    while (1);
}

/* [ ] */

