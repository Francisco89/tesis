This directory contains source code for CyUSB3 WDF kernel mode generic driver.

DIRECTORY STRUCTURE:

	 build_script : Build script for driver.
			->cywdkbuild.bat   : Driver build script.	
			->cybuildall.bat   : Build script to build driver for Windows XP(x86 only),Vista(x86 and x64) and 7(x86 and x64) and Checked/Release build.
			->MAKE_INX.exe 	   : This application is used to generate CyUSB.txt.
			->cyusb3.txt       : Source for INF file, user can update this file to add their VID/PID and strings, build operation generates INF file from this file.

	 inc          : Header files. 
	 src          : Source files.
	 res          : Resource files. 
	 workspace    : cyusb_driver.sln. 
	 ReadMe.txt   : ReadMe file.

VISUAL STUDIO SOLUTION FILE:
	Open CyUSB3_sys_driver\workspace\cyusb_driver.sln file in Visual Studio 2008 or higher.
	This project is created using Visual Studio 2008. Visual studio solution is only for code navigation. Please follow the build driver steps to build driver binaries.

REQUIRED TOOLS TO BUILD DRIVER:
	Please use WINDDK version 7600.16385.0 to build driver. 
	Update the WINDDK path, please search and update below line in the cywdkbuild.bat file.
	WINDDK Path is set to following by default :set BASEDIR=C:\WINDDK\7600.16385.0

	If you don't have WINDDK, download it from Microsoft website link :http://www.microsoft.com/en-us/download/details.aspx?id=11800
	
HOW TO BUILD DRIVER:
	User can use either WDK build environment or the Cypress provided build script to build the drivers.
	Build driver using Cypress build script.
	  Execute cybuildall.bat file. 
	  This script builds driver for  Windows XP, Vista and 7 and Platform x86 and amd64. By default it generate release version of driver.
	  	  
	  Following are the steps to build debug binary.
	  1.Disable the 'fre' build command and enable 'chk' build command.
	    Example :rem CMD /c cywdkbuild x86 fre win7
		  CMD /c cywdkbuild x64 chk win7
	  2. Enable the command 'ENABLE_EVENT_TRACING=1' in the src\source file.
	     Remove # to enable it.

DRIVER BINARIES AFTER BUILD:
  	You can find built binaries in following directory : CyUSBSuite_Source\CyUSB3_sys_driver\src\cyusb3

API GUIDE DOCUMENT:
	Please refer Cypress CyUSB Driver Programmer's Reference document for IOCTL interface of driver.
	You can find this document after installing FX3 SDK installer under following directory. 
	Directory : Cypress\Cypress USBSuite\driver\CyUSB.pdf or CyUSB.chm


