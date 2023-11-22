M140 S60 ;bed Temp
M190 S60 ;wait for bed Temp
M104 S60 ;nozzle Temp
M109 S60 ;wait for nozzle Temp
M82 ;absolute extrusion mode
G28 ;Home all axes
G92 E0 r ;reset extruder
G1 Z2.0 F3000 ;move up to not scrape bed
;-----------------------TestLine-------------------
G1 X0.1 Y20 Z0.3 F5000.0
G1 X0.1 Y200 z0.3 F1500.0 E15
G1 X0.4 Y200 z0.3 F1500.0 
G1 X0.4 Y20 z0.3 F1500.0 E15
;-----------------------DoneWithTestLine-------------------
G92 E0 r ;reset extruder
G1 Z2.0 F3000 ;move up to not scrape bed
G92 E0 r ;reset extruder
G1 F2400 E-5; retractfillemant abit
M107 ;Turn fan off for first layer
;-----------------------SetupDone-------------------


G1 F1200 X-25 Y25; move to layer start point
G1 X-25 Y-25 E0.05 ; move to next point
G1 X25 Y-25 E0.05 ; move to next point
G1 X25 Y25 E0.05 ; move to next point
G1 X-25 Y25 E0.05 ; move to next point
;-----------------------LayerDone-------------------

;-----------------------PrintDone-------------------


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


