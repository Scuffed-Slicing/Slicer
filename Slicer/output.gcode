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
    
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z0 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z0 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z0,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z0,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z0,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z0,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z1,2000000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z1,2000000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z1,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z1,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z2,4000000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z2,4000000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z2,8000000000000003 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z2,8000000000000003 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z3,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z3,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z3,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z3,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z4,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z4,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z4,800000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z4,800000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z5,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z5,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z5,6000000000000005 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z5,6000000000000005 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z6,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z6,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z6,800000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z6,800000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z7,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z7,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z7,6000000000000005 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z7,6000000000000005 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z8,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z8,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z8,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z8,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z9,200000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z9,200000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z9,600000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z9,600000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z10 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z10 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z10,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z10,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z10,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z10,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z11,200000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z11,200000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z11,600000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z11,600000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z12 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z12 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z12,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z12,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z12,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z12,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z13,200000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z13,200000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z13,600000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z13,600000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z14 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z14 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z14,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z14,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z14,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z14,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z15,200000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z15,200000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z15,600000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z15,600000000000001 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z16 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z16 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z16,400000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z16,400000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z16,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z16,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z17,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z17,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z17,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z17,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z18 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z18 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z18,400000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z18,400000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z18,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z18,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z19,200000000000003 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z19,200000000000003 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z19,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z19,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z20 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z20 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z20,400000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z20,400000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z20,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z20,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z21,200000000000003 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z21,200000000000003 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z21,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z21,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z22 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z22 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z22,400000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z22,400000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z22,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z22,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z23,200000000000003 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z23,200000000000003 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z23,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z23,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z24 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z24 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z24,400000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z24,400000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z24,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z24,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z25,200000000000003 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z25,200000000000003 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z25,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z25,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z26 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z26 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z26,400000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z26,400000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z26,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z26,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z27,200000000000003 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z27,200000000000003 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z27,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z27,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z28 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z28 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z28,400000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z28,400000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z28,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z28,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z29,200000000000003 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z29,200000000000003 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z29,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z29,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z30 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z30 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z30,400000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z30,400000000000002 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z30,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z30,8 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z31,200000000000003 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z31,200000000000003 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z31,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z31,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z32 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z32 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z32,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z32,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z32,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z32,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z33,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z33,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z33,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z33,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z34 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z34 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z34,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z34,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z34,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z34,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z35,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z35,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z35,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z35,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z36 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z36 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z36,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z36,4 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z36,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z36,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z37,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z37,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z37,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z37,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z38 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z38 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z38,400000000000006 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z38,400000000000006 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z38,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z38,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z39,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z39,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z39,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z39,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z40 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z40 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z40,400000000000006 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z40,400000000000006 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z40,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z40,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z41,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z41,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z41,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z41,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z42 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z42 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z42,400000000000006 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z42,400000000000006 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z42,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z42,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z43,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z43,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z43,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z43,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z44 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z44 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z44,400000000000006 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z44,400000000000006 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z44,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z44,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z45,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z45,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z45,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z45,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z46 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z46 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z46,400000000000006 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z46,400000000000006 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z46,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z46,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z47,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z47,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z47,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z47,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z48 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z48 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z48,400000000000006 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z48,400000000000006 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z48,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z48,800000000000004 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z49,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z49,2 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y24,8 E0.05 ; move to next point
    G1 X-24,8 Y-24,8 E0.05 ; move to next point
    G1 X24,8 Y-24,8 E0.05 ; move to next point
    G1 Z49,6 ; move to next Layer
    ;-----------------------LayerDone-------------------
    
    G1 X24 Y-24 E0.05 ; move to next point
    G1 X24 Y24 E0.05 ; move to next point
    G1 X-24 Y24 E0.05 ; move to next point
    G1 X-24 Y-24 E0.05 ; move to next point
    G1 Z49,6 ; move to next Layer
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
    
    
