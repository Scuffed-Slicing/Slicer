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


G1 X-50 Y0 E0.05 ; move to next point
G1 X0 Y-50 E0.05 ; move to next point
G1 Z0 ; move to next Layer
;-----------------------LayerDone-------------------

G1 X-47.17157287525381 Y2.8284271247461916 E0.05 ; move to next point
G1 X2.8284271247461916 Y-47.17157287525381 E0.05 ; move to next point
G1 Z0 ; move to next Layer
;-----------------------LayerDone-------------------

G1 X-44.34314575050762 Y5.656854249492383 E0.05 ; move to next point
G1 X5.656854249492383 Y-44.34314575050762 E0.05 ; move to next point
G1 Z0 ; move to next Layer
;-----------------------LayerDone-------------------

G1 X-41.514718625761425 Y8.485281374238575 E0.05 ; move to next point
G1 X8.485281374238575 Y-41.514718625761425 E0.05 ; move to next point
G1 Z0 ; move to next Layer
;-----------------------LayerDone-------------------

G1 X-38.68629150101523 Y11.313708498984765 E0.05 ; move to next point
G1 X11.313708498984765 Y-38.68629150101523 E0.05 ; move to next point
G1 Z0 ; move to next Layer
;-----------------------LayerDone-------------------

G1 X-35.85786437626905 Y14.142135623730955 E0.05 ; move to next point
G1 X14.142135623730955 Y-35.85786437626905 E0.05 ; move to next point
G1 Z0 ; move to next Layer
;-----------------------LayerDone-------------------

G1 X-33.02943725152286 Y16.970562748477143 E0.05 ; move to next point
G1 X16.970562748477143 Y-33.02943725152286 E0.05 ; move to next point
G1 Z0 ; move to next Layer
;-----------------------LayerDone-------------------

G1 X-30.201010126776666 Y19.798989873223334 E0.05 ; move to next point
G1 X19.798989873223334 Y-30.201010126776666 E0.05 ; move to next point
G1 Z0 ; move to next Layer
;-----------------------LayerDone-------------------

G1 X-27.372583002030474 Y22.627416997969526 E0.05 ; move to next point
G1 X22.627416997969526 Y-27.372583002030474 E0.05 ; move to next point
G1 Z0 ; move to next Layer
;-----------------------LayerDone-------------------

G1 X-24.544155877284286 Y25.455844122715714 E0.05 ; move to next point
G1 X25.455844122715714 Y-24.544155877284286 E0.05 ; move to next point
G1 Z0 ; move to next Layer
;-----------------------LayerDone-------------------

G1 X-21.715728752538098 Y28.284271247461902 E0.05 ; move to next point
G1 X28.284271247461902 Y-21.715728752538098 E0.05 ; move to next point
G1 Z0 ; move to next Layer
;-----------------------LayerDone-------------------

G1 X-18.887301627791906 Y31.112698372208094 E0.05 ; move to next point
G1 X31.112698372208094 Y-18.887301627791906 E0.05 ; move to next point
G1 Z0 ; move to next Layer
;-----------------------LayerDone-------------------

G1 X-16.058874503045715 Y33.941125496954285 E0.05 ; move to next point
G1 X33.941125496954285 Y-16.058874503045715 E0.05 ; move to next point
G1 Z0 ; move to next Layer
;-----------------------LayerDone-------------------

G1 X-13.230447378299527 Y36.76955262170047 E0.05 ; move to next point
G1 X36.76955262170047 Y-13.230447378299527 E0.05 ; move to next point
G1 Z0 ; move to next Layer
;-----------------------LayerDone-------------------

G1 X-10.402020253553337 Y39.59797974644666 E0.05 ; move to next point
G1 X39.59797974644666 Y-10.402020253553337 E0.05 ; move to next point
G1 Z0 ; move to next Layer
;-----------------------LayerDone-------------------

G1 X-7.573593128807147 Y42.42640687119285 E0.05 ; move to next point
G1 X42.42640687119285 Y-7.573593128807147 E0.05 ; move to next point
G1 Z0 ; move to next Layer
;-----------------------LayerDone-------------------

G1 X-4.745166004060955 Y45.254833995939045 E0.05 ; move to next point
G1 X45.254833995939045 Y-4.745166004060955 E0.05 ; move to next point
G1 Z0 ; move to next Layer
;-----------------------LayerDone-------------------

G1 X-1.9167388793147637 Y48.083261120685236 E0.05 ; move to next point
G1 X48.083261120685236 Y-1.9167388793147637 E0.05 ; move to next point
G1 Z0 ; move to next Layer
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


