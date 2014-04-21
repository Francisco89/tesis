This Project contain FX3 Example codes to demonstrate use of CyU3PGpifReadDataWords and CyU3PGpifWriteDataWords functions.
This Example is tested by connecting to FX3 DVK’s on Back to Back (GPIF data and control lines of one DVK are connected to corresponding GPIF line of other DVK)

There are two example code
1.	GPIF Master
2.	GPIF Slave
 
GPIF Master :

This example includes use of CyU3PGpifWriteDataWords function to write data on GPIF bus. Corresponding GPIF Waveform is included.

GPIF Slave :

This Example includes use CyU3PGpifReadDataWords. The FX3 device reads data from 16 bit bus. Corresponding GPIF waveform is included.


Waveform details.

1.	16 bit data
2.	No address lines
3.	Asynchronous interface on thread 0
4.	Apart from WE#, OE#, CE# lines Read_flag and write_flags are used for handshaking. Attached example make use of write_flag 	only.
5.	All control signals are active low
6.	Data is sampled on rising edge of WE# for write waveform.
7.	Master check for write_flag before writing data on bus. If write_flag is high then master writes the data on bus.
8. 	There is a bug in SDK 1.0 library source(cyfxapi.a). Use attached library source. it should be copied to "C:\Program Files\Cypress\EZ-USB FX3 SDK\1.0\firmware\u3p_firmware\lib\fx3_debug". only debug configuration of examples will works 
	
	i.e.image in 
8.1. 	GPIF_EXAMPLE\Slave Device\SlaveFifoAsync\Debug. 
8.2. 	GPIF_EXAMPLE\Master Device\GPIF_Async\Debug.
 
	this will be fixed in next release.

9. 	USB is disabled in these example and device will not enumarate after code download.
10. 	UART can be use to see debug print messages.


For more details contact dbir@cypress.com (Dhanraj.Rajput@cypress.com)
