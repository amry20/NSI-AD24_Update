#                    	CONFIGURATION FILE FOR NSI_ADSEND
#									Revision 5.1
#---------------------------------------------------------------------------------------
#                        			EARTHWORM CONFIGURATION
ModuleId        MOD_NSI2EW_ADSEND	# Module id of this instance of nsi2ew_adsend
OutRing         SCNL_RING      		# Transport ring to write waveforms to
Heartbeat    	30             		# Heartbeat interval in seconds
LogFile			1					# Log file switch, 0=off, 1=on
TraceBuffSize   4              		# ADC Data trace buffer size. Can be 2 or 4 bytes
#                        			TELEMETRY CONFIGURATION
Description		Earthworm_Software 	# Client description, max 128 chararacter no space
Telemetry		TCP					# TCP or SERIAL
TCPHost			192.168.1.254		# TCP Address
TCPPort			15024				# TCP Port
CommPort		5					# Comm Port Number
CommSpeed		115200				# Comm Port BaudRate
#                         			TIMING INFORMATION
TimeRefType     0					# 0 = Use Internal ref [GPS and RTC], 1 = Use PC time
TimeSyncError   50					# PC ref only. The error in milliseconds before resync 
TimeRefOffset   0               	# Time Reference offset in milliseconds
#                        			CHANNEL CONFIGURATION
Nchan		 	4					# specify number of channels that will be recorded.
#---------------------------------------------------------------------------------------
#     	Channel   Station	  Component  	Network		Location		
#   	-------   -------  	 ----------		-------		-------- 	
Chan	 	0	   	NSI1   		EHZ 			NS 			00		
Chan     	1	   	NSI2   		EHZ 			NS 			00			
Chan     	2	   	NSI3   		EHZ 			NS 			00			
Chan     	3	   	NSI4   		EHZ 			NS 			00