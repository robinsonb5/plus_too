## Generated SDC file "plusToo_top.sdc"

## Copyright (C) 1991-2011 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 11.0 Build 157 04/27/2011 SJ Web Edition"

## DATE    "Thu Sep 22 12:58:58 2011"

##
## DEVICE  "EP2C20F484C7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************


#**************************************************************
# Create Generated Clock
#**************************************************************

derive_pll_clocks -create_base_clocks

# Automatically calculate clock uncertainty to jitter and other effects.
derive_clock_uncertainty

#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks spiclk] -group [get_clocks ${topmodule}cs0|altpll_component|auto_generated|pll1|clk[*]]
set_clock_groups -asynchronous -group [get_clocks $supportclk] -group [get_clocks ${topmodule}cs0|altpll_component|auto_generated|pll1|clk[*]]


#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************

set_multicycle_path -from ${topmodule}user_io|rtc[*] -to ${topmodule}dc0|pram|secs[*]* -setup 4
set_multicycle_path -from ${topmodule}user_io|rtc[*] -to ${topmodule}dc0|pram|secs[*]* -hold 3

set_multicycle_path -from [get_clocks ${topmodule}cs0|altpll_component|auto_generated|pll1|clk[2]] -to [get_clocks ${topmodule}cs0|altpll_component|auto_generated|pll1|clk[0]] -setup -end 2

#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************


# SDRAM delays
set_input_delay -clock [get_clocks ${topmodule}cs0|altpll_component|auto_generated|pll1|clk[2]] -reference_pin [get_ports ${RAM_CLK}] -max 6.4 [get_ports ${RAM_IN}]
set_input_delay -clock [get_clocks ${topmodule}cs0|altpll_component|auto_generated|pll1|clk[2]] -reference_pin [get_ports ${RAM_CLK}] -min 3.2 [get_ports ${RAM_IN}]

set_output_delay -clock [get_clocks ${topmodule}cs0|altpll_component|auto_generated|pll1|clk[2]] -reference_pin [get_ports ${RAM_CLK}] -max 1.5 [get_ports ${RAM_OUT}]
set_output_delay -clock [get_clocks ${topmodule}cs0|altpll_component|auto_generated|pll1|clk[2]] -reference_pin [get_ports ${RAM_CLK}] -min -0.8 [get_ports ${RAM_OUT}]

# VGA delayes
set_false_path -to ${VGA_OUT}

set_multicycle_path -to ${VGA_OUT} -setup 2
set_multicycle_path -to ${VGA_OUT} -hold 1
