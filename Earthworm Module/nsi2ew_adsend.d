#                    						CONFIGURATION FILE FOR NSI2EW_ADSEND
#						    			   Revision 8.0
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
#                        			EARTHWORM CONFIGURATION
ModuleId		MOD_NSI2EW_ADSEND	# Module id of this instance of nsi2ew_adsend
OutRing			SCNL_RING      		# Transport ring to write waveforms to
Heartbeat		30             		# Heartbeat interval in seconds
LogFile			1			# Log file switch, 0=off, 1=on
TraceBuffSize		4              		# ADC Data trace buffer size. Can be 2 or 4 bytes
#                        			TELEMETRY CONFIGURATION
Description		Earthworm_Software 	# Client description, max 128 characters without space
SampleBlock		2			# Number of block in second which total sample should be buffered before sendthem to the transport ring
BlockCapture		ABS_0			# ABS_0: capture first sample block that contains timestamp exactly at 0 second (eg:2023-01-01T12:00:00.000). 
#						# ANY  : capture first sample block for any time its received (eg: 2023-01-01T12:59:59.200)
#						# note: it's might be need update firmware if there is an error
Telemetry		TCP			# TCP or SERIAL
TCPHost			192.168.1.254		# TCP Address
TCPPort			15024			# TCP Port
TCPTimeout		500			# TCP read and write timeout
CommPort		7			# Comm Port Number
CommSpeed		115200			# Comm Port BaudRate
CommMode		8N1			# Can be 8N1 (8 data bits, No parity, 1 start/stop bit)
#						# or 8E1 (8 data bits, Even parity, 1 start/stop bit)
#						# or 8O1 (8 data bits, Odd parity, 1 start/stop bit)
#                         			TIMING CONFIGURATION
TimeRefType		0			# 0 = Use Internal ref [GPS and RTC], 1 = Use PC time
TimeSyncError		50			# PC ref only. The error in milliseconds before resync 
TimeRefOffset		0               	# Time Reference offset in milliseconds
#                        			CHANNEL CONFIGURATION
Nchan			4			# specify number of channels that will be recorded.
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
#	Channel	Station	Component	Network	Location		
#	-------	-------	----------	-------	-------- 	
Chan	0	   	NSI1		EHZ		NS		00		
Chan	1	   	NSI2		EHZ		NS		00			
Chan	2	   	NSI3		EHZ		NS		00			
Chan	3	   	NSI4		EHZ		NS		00
#
#---------------------------------------------------------------------------------------------------------------------------------------------------------------