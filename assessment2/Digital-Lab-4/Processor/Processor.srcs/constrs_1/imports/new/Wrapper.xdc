# Inputs
set_property PACKAGE_PIN W5 [get_ports CLK]
    set_property IOSTANDARD LVCMOS33 [get_ports CLK]
set_property PACKAGE_PIN U18 [get_ports RESET]
    set_property IOSTANDARD LVCMOS33 [get_ports RESET]

# MOUSE INPUTS
set_property PACKAGE_PIN C17 [get_ports CLK_MOUSE]                        
    set_property IOSTANDARD LVCMOS33 [get_ports CLK_MOUSE]
    set_property PULLUP true [get_ports CLK_MOUSE] 
    
set_property PACKAGE_PIN B17 [get_ports DATA_MOUSE]                        
    set_property IOSTANDARD LVCMOS33 [get_ports DATA_MOUSE]
    set_property PULLUP true [get_ports DATA_MOUSE]  
# SEG_SELECT_OUT
set_property PACKAGE_PIN W4 [get_ports {SEG_SELECT_OUT[0]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {SEG_SELECT_OUT[0]}]

set_property PACKAGE_PIN V4 [get_ports {SEG_SELECT_OUT[1]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {SEG_SELECT_OUT[1]}]

set_property PACKAGE_PIN U4 [get_ports {SEG_SELECT_OUT[2]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {SEG_SELECT_OUT[2]}]

set_property PACKAGE_PIN U2 [get_ports {SEG_SELECT_OUT[3]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {SEG_SELECT_OUT[3]}]
    
    
# HEX_OUT
set_property PACKAGE_PIN W7 [get_ports {HEX_OUT[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {HEX_OUT[0]}]

set_property PACKAGE_PIN W6 [get_ports {HEX_OUT[1]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {HEX_OUT[1]}]


set_property PACKAGE_PIN U8 [get_ports {HEX_OUT[2]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {HEX_OUT[2]}]


set_property PACKAGE_PIN V8 [get_ports {HEX_OUT[3]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {HEX_OUT[3]}]


set_property PACKAGE_PIN U5 [get_ports {HEX_OUT[4]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {HEX_OUT[4]}]


set_property PACKAGE_PIN V5 [get_ports {HEX_OUT[5]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {HEX_OUT[5]}]


set_property PACKAGE_PIN U7 [get_ports {HEX_OUT[6]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {HEX_OUT[6]}]


set_property PACKAGE_PIN V7 [get_ports {HEX_OUT[7]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {HEX_OUT[7]}]
        
# LEDs
set_property PACKAGE_PIN U16 [get_ports {LED_OUT[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {LED_OUT[0]}]
set_property PACKAGE_PIN E19 [get_ports {LED_OUT[1]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {LED_OUT[1]}]
set_property PACKAGE_PIN U19 [get_ports {LED_OUT[2]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {LED_OUT[2]}]
set_property PACKAGE_PIN V19 [get_ports {LED_OUT[3]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {LED_OUT[3]}]
set_property PACKAGE_PIN W18 [get_ports {LED_OUT[4]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {LED_OUT[4]}]
set_property PACKAGE_PIN U15 [get_ports {LED_OUT[5]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {LED_OUT[5]}]
set_property PACKAGE_PIN U14 [get_ports {LED_OUT[6]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {LED_OUT[6]}]
set_property PACKAGE_PIN V14 [get_ports {LED_OUT[7]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {LED_OUT[7]}]