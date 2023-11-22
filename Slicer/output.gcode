M140 S60 ;bed Temp
M190 S60 ;wait for bed Temp
M104 S60 ;nozzle Temp
M109 S60 ;wait for nozzle Temp
M82 ;absolute extrusion mode
G28 ;Home all axes
M107 ;Turn fan off for first layer
;-----------------------SetupDone-------------------


G92 E0 r ;reset extruder
G1 Z2.0 F3000 ;move up to not scrape bed
;-----------------------NewLayer-------------------


G1 X-25 Y-10,2 ; move to next point
G1 X-25 Y-25 ; move to next point
G1 X10,2 Y-25 ; move to next point
G1 X25 Y-25 ; move to next point
G1 X25 Y10,2 ; move to next point
G1 X25 Y25 ; move to next point
G1 X-10,2 Y25 ; move to next point
G1 X-25 Y25 ; move to next point
G1 X-25 Y-10,2 ; move to next point
M106 ;turn fan on after first layer
;-----------------------MovesDone-------------------


M140 S0 ;bed Temp
M107 ;fan off
M220 S100 ; reset speed overwrite to 100%
M221 S100 ; reset sextrude fctor overwrite to 100%
G90 ; coordinates to reltive
G1 F1800 E-3 ;retract fillament 3 mm
G1 F3000 Z20 ; move up 20 mm
G90 ;coordts to absolute
G1 X0 Y235 F1000 ; move to front of heatbed
M107 ;fan off
84 ;Disable stepper motors
M82 ;absolute extrusion mode
M104 S0 ; set extruder temp
;-----------------------ResetDone-------------------


