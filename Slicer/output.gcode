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


G1 F1200 X10,68 Y-10,5; move to layer start point
G1 X10,68 Y-10,5 E0.05 ; move to next point
G1 X10,68 Y-10,5 E0.05 ; move to next point
G1 X9,79 Y-11,34 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-11,95 Y9,11 E0.05 ; move to next point
G1 X-11,95 Y9,11 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X3,31 Y14,62 E0.05 ; move to next point
G1 X3,31 Y14,62 E0.05 ; move to next point
G1 X3,31 Y14,62 E0.05 ; move to next point
G1 X2,1 Y14,84 E0.05 ; move to next point
G1 X4,49 Y14,3 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-6,26 Y13,64 E0.05 ; move to next point
G1 X-6,26 Y13,64 E0.05 ; move to next point
G1 X-6,26 Y13,64 E0.05 ; move to next point
G1 X-7,35 Y13,09 E0.05 ; move to next point
G1 X-5,13 Y14,1 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X0,89 Y14,97 E0.05 ; move to next point
G1 X0,89 Y14,97 E0.05 ; move to next point
G1 X0,89 Y14,97 E0.05 ; move to next point
G1 X2,1 Y14,84 E0.05 ; move to next point
G1 X2,1 Y14,84 E0.05 ; move to next point
G1 X2,1 Y14,84 E0.05 ; move to next point
G1 X-0,34 Y14,99 E0.05 ; move to next point
G1 X-1,56 Y14,92 E0.05 ; move to next point
G1 X-1,56 Y14,92 E0.05 ; move to next point
G1 X-1,56 Y14,92 E0.05 ; move to next point
G1 X-1,56 Y14,92 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-5,13 Y14,1 E0.05 ; move to next point
G1 X-5,13 Y14,1 E0.05 ; move to next point
G1 X-5,13 Y14,1 E0.05 ; move to next point
G1 X-3,96 Y14,47 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-11,16 Y10,05 E0.05 ; move to next point
G1 X-11,16 Y10,05 E0.05 ; move to next point
G1 X-11,16 Y10,05 E0.05 ; move to next point
G1 X-11,95 Y9,11 E0.05 ; move to next point
G1 X-11,95 Y9,11 E0.05 ; move to next point
G1 X-12,65 Y8,1 E0.05 ; move to next point
G1 X-12,65 Y8,1 E0.05 ; move to next point
G1 X-12,65 Y8,1 E0.05 ; move to next point
G1 X-10,31 Y10,92 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X11,5 Y-9,6 E0.05 ; move to next point
G1 X11,5 Y-9,6 E0.05 ; move to next point
G1 X11,5 Y-9,6 E0.05 ; move to next point
G1 X10,68 Y-10,5 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-6,26 Y-13,65 E0.05 ; move to next point
G1 X-6,26 Y-13,65 E0.05 ; move to next point
G1 X-6,26 Y-13,65 E0.05 ; move to next point
G1 X-5,13 Y-14,11 E0.05 ; move to next point
G1 X-7,35 Y-13,1 E0.05 ; move to next point
G1 X-7,35 Y-13,1 E0.05 ; move to next point
G1 X-7,35 Y-13,1 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-10,31 Y-10,93 E0.05 ; move to next point
G1 X-10,31 Y-10,93 E0.05 ; move to next point
G1 X-10,31 Y-10,93 E0.05 ; move to next point
G1 X-11,16 Y-10,06 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X0,89 Y-14,98 E0.05 ; move to next point
G1 X0,89 Y-14,98 E0.05 ; move to next point
G1 X0,89 Y-14,98 E0.05 ; move to next point
G1 X2,1 Y-14,85 E0.05 ; move to next point
G1 X-0,34 Y-15 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-0,34 Y-15 E0.05 ; move to next point
G1 X-0,34 Y-15 E0.05 ; move to next point
G1 X-0,34 Y-15 E0.05 ; move to next point
G1 X-1,56 Y-14,93 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X12,25 Y-8,62 E0.05 ; move to next point
G1 X12,25 Y-8,62 E0.05 ; move to next point
G1 X12,25 Y-8,62 E0.05 ; move to next point
G1 X12,91 Y-7,59 E0.05 ; move to next point
G1 X12,91 Y-7,59 E0.05 ; move to next point
G1 X12,91 Y-7,59 E0.05 ; move to next point
G1 X13,48 Y-6,51 E0.05 ; move to next point
G1 X13,48 Y-6,51 E0.05 ; move to next point
G1 X13,48 Y-6,51 E0.05 ; move to next point
G1 X13,48 Y-6,51 E0.05 ; move to next point
G1 X11,5 Y-9,6 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X13,97 Y-5,39 E0.05 ; move to next point
G1 X13,48 Y-6,51 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X14,66 Y-3,04 E0.05 ; move to next point
G1 X14,66 Y-3,04 E0.05 ; move to next point
G1 X14,66 Y-3,04 E0.05 ; move to next point
G1 X14,86 Y-1,84 E0.05 ; move to next point
G1 X14,36 Y-4,23 E0.05 ; move to next point
G1 X14,36 Y-4,23 E0.05 ; move to next point
G1 X14,36 Y-4,23 E0.05 ; move to next point
G1 X13,97 Y-5,39 E0.05 ; move to next point
G1 X13,97 Y-5,39 E0.05 ; move to next point
G1 X13,97 Y-5,39 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X9,79 Y-11,34 E0.05 ; move to next point
G1 X9,79 Y-11,34 E0.05 ; move to next point
G1 X9,79 Y-11,34 E0.05 ; move to next point
G1 X9,79 Y-11,34 E0.05 ; move to next point
G1 X8,83 Y-12,1 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X14,96 Y0,61 E0.05 ; move to next point
G1 X14,96 Y0,61 E0.05 ; move to next point
G1 X14,96 Y0,61 E0.05 ; move to next point
G1 X14,96 Y-0,62 E0.05 ; move to next point
G1 X14,86 Y1,83 E0.05 ; move to next point
G1 X14,66 Y3,03 E0.05 ; move to next point
G1 X14,66 Y3,03 E0.05 ; move to next point
G1 X14,66 Y3,03 E0.05 ; move to next point
G1 X14,66 Y3,03 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X14,96 Y-0,62 E0.05 ; move to next point
G1 X14,96 Y-0,62 E0.05 ; move to next point
G1 X14,96 Y-0,62 E0.05 ; move to next point
G1 X14,86 Y-1,84 E0.05 ; move to next point
G1 X14,86 Y-1,84 E0.05 ; move to next point
G1 X14,86 Y-1,84 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X13,97 Y5,38 E0.05 ; move to next point
G1 X13,97 Y5,38 E0.05 ; move to next point
G1 X13,97 Y5,38 E0.05 ; move to next point
G1 X13,48 Y6,5 E0.05 ; move to next point
G1 X14,36 Y4,22 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X10,68 Y10,49 E0.05 ; move to next point
G1 X10,68 Y10,49 E0.05 ; move to next point
G1 X10,68 Y10,49 E0.05 ; move to next point
G1 X9,79 Y11,33 E0.05 ; move to next point
G1 X11,5 Y9,58 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-13,8 Y5,95 E0.05 ; move to next point
G1 X-13,8 Y5,95 E0.05 ; move to next point
G1 X-13,27 Y7,05 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-14,24 Y4,8 E0.05 ; move to next point
G1 X-14,24 Y4,8 E0.05 ; move to next point
G1 X-14,24 Y4,8 E0.05 ; move to next point
G1 X-14,58 Y3,63 E0.05 ; move to next point
G1 X-14,58 Y3,63 E0.05 ; move to next point
G1 X-14,58 Y3,63 E0.05 ; move to next point
G1 X-14,83 Y2,43 E0.05 ; move to next point
G1 X-14,98 Y1,22 E0.05 ; move to next point
G1 X-15,03 Y-0,01 E0.05 ; move to next point
G1 X-15,03 Y-0,01 E0.05 ; move to next point
G1 X-15,03 Y-0,01 E0.05 ; move to next point
G1 X-13,8 Y5,95 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X12,91 Y7,58 E0.05 ; move to next point
G1 X12,91 Y7,58 E0.05 ; move to next point
G1 X12,91 Y7,58 E0.05 ; move to next point
G1 X13,48 Y6,5 E0.05 ; move to next point
G1 X13,48 Y6,5 E0.05 ; move to next point
G1 X13,48 Y6,5 E0.05 ; move to next point
G1 X12,25 Y8,61 E0.05 ; move to next point
G1 X11,5 Y9,58 E0.05 ; move to next point
G1 X11,5 Y9,58 E0.05 ; move to next point
G1 X11,5 Y9,58 E0.05 ; move to next point
G1 X11,5 Y9,58 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X9,79 Y11,33 E0.05 ; move to next point
G1 X9,79 Y11,33 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-13,27 Y-7,06 E0.05 ; move to next point
G1 X-13,27 Y-7,06 E0.05 ; move to next point
G1 X-13,27 Y-7,06 E0.05 ; move to next point
G1 X-12,65 Y-8,12 E0.05 ; move to next point
G1 X-13,8 Y-5,96 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-13,8 Y-5,96 E0.05 ; move to next point
G1 X-13,8 Y-5,96 E0.05 ; move to next point
G1 X-13,8 Y-5,96 E0.05 ; move to next point
G1 X-14,24 Y-4,82 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-8,4 Y-12,46 E0.05 ; move to next point
G1 X-8,4 Y-12,46 E0.05 ; move to next point
G1 X-8,4 Y-12,46 E0.05 ; move to next point
G1 X-7,35 Y-13,1 E0.05 ; move to next point
G1 X-9,38 Y-11,73 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-9,38 Y-11,73 E0.05 ; move to next point
G1 X-9,38 Y-11,73 E0.05 ; move to next point
G1 X-9,38 Y-11,73 E0.05 ; move to next point
G1 X-10,31 Y-10,93 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-14,98 Y1,22 E0.05 ; move to next point
G1 X-14,98 Y1,22 E0.05 ; move to next point
G1 X-14,98 Y1,22 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-14,83 Y2,43 E0.05 ; move to next point
G1 X-14,83 Y2,43 E0.05 ; move to next point
G1 X-14,83 Y2,43 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-13,27 Y7,05 E0.05 ; move to next point
G1 X-13,27 Y7,05 E0.05 ; move to next point
G1 X-13,27 Y7,05 E0.05 ; move to next point
G1 X-13,27 Y7,05 E0.05 ; move to next point
G1 X-12,65 Y8,1 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-10,31 Y10,92 E0.05 ; move to next point
G1 X-10,31 Y10,92 E0.05 ; move to next point
G1 X-10,31 Y10,92 E0.05 ; move to next point
G1 X-9,38 Y11,72 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-9,38 Y11,72 E0.05 ; move to next point
G1 X-9,38 Y11,72 E0.05 ; move to next point
G1 X-9,38 Y11,72 E0.05 ; move to next point
G1 X-9,38 Y11,72 E0.05 ; move to next point
G1 X-8,4 Y12,44 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-8,4 Y12,44 E0.05 ; move to next point
G1 X-8,4 Y12,44 E0.05 ; move to next point
G1 X-8,4 Y12,44 E0.05 ; move to next point
G1 X-7,35 Y13,09 E0.05 ; move to next point
G1 X-7,35 Y13,09 E0.05 ; move to next point
G1 X-7,35 Y13,09 E0.05 ; move to next point
G1 X-7,35 Y13,09 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-3,96 Y14,47 E0.05 ; move to next point
G1 X-3,96 Y14,47 E0.05 ; move to next point
G1 X-3,96 Y14,47 E0.05 ; move to next point
G1 X-2,77 Y14,74 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-2,77 Y14,74 E0.05 ; move to next point
G1 X-2,77 Y14,74 E0.05 ; move to next point
G1 X-1,56 Y14,92 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X4,49 Y14,3 E0.05 ; move to next point
G1 X4,49 Y14,3 E0.05 ; move to next point
G1 X4,49 Y14,3 E0.05 ; move to next point
G1 X5,64 Y13,88 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-0,34 Y14,99 E0.05 ; move to next point
G1 X-0,34 Y14,99 E0.05 ; move to next point
G1 X-0,34 Y14,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X5,64 Y13,88 E0.05 ; move to next point
G1 X5,64 Y13,88 E0.05 ; move to next point
G1 X5,64 Y13,88 E0.05 ; move to next point
G1 X6,75 Y13,37 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X6,75 Y13,37 E0.05 ; move to next point
G1 X6,75 Y13,37 E0.05 ; move to next point
G1 X6,75 Y13,37 E0.05 ; move to next point
G1 X7,82 Y12,78 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X7,82 Y12,78 E0.05 ; move to next point
G1 X7,82 Y12,78 E0.05 ; move to next point
G1 X7,82 Y12,78 E0.05 ; move to next point
G1 X8,83 Y12,09 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X8,83 Y12,09 E0.05 ; move to next point
G1 X8,83 Y12,09 E0.05 ; move to next point
G1 X8,83 Y12,09 E0.05 ; move to next point
G1 X9,79 Y11,33 E0.05 ; move to next point
G1 X9,79 Y11,33 E0.05 ; move to next point
G1 X9,79 Y11,33 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X14,36 Y4,22 E0.05 ; move to next point
G1 X14,36 Y4,22 E0.05 ; move to next point
G1 X14,36 Y4,22 E0.05 ; move to next point
G1 X14,66 Y3,03 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X12,25 Y8,61 E0.05 ; move to next point
G1 X12,25 Y8,61 E0.05 ; move to next point
G1 X12,25 Y8,61 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X8,83 Y-12,1 E0.05 ; move to next point
G1 X8,83 Y-12,1 E0.05 ; move to next point
G1 X8,83 Y-12,1 E0.05 ; move to next point
G1 X7,82 Y-12,79 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X14,86 Y1,83 E0.05 ; move to next point
G1 X14,86 Y1,83 E0.05 ; move to next point
G1 X14,86 Y1,83 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X7,82 Y-12,79 E0.05 ; move to next point
G1 X7,82 Y-12,79 E0.05 ; move to next point
G1 X7,82 Y-12,79 E0.05 ; move to next point
G1 X6,75 Y-13,38 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X6,75 Y-13,38 E0.05 ; move to next point
G1 X6,75 Y-13,38 E0.05 ; move to next point
G1 X6,75 Y-13,38 E0.05 ; move to next point
G1 X5,64 Y-13,89 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X5,64 Y-13,89 E0.05 ; move to next point
G1 X5,64 Y-13,89 E0.05 ; move to next point
G1 X5,64 Y-13,89 E0.05 ; move to next point
G1 X4,49 Y-14,31 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X4,49 Y-14,31 E0.05 ; move to next point
G1 X4,49 Y-14,31 E0.05 ; move to next point
G1 X4,49 Y-14,31 E0.05 ; move to next point
G1 X3,31 Y-14,63 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X3,31 Y-14,63 E0.05 ; move to next point
G1 X3,31 Y-14,63 E0.05 ; move to next point
G1 X3,31 Y-14,63 E0.05 ; move to next point
G1 X2,1 Y-14,85 E0.05 ; move to next point
G1 X2,1 Y-14,85 E0.05 ; move to next point
G1 X2,1 Y-14,85 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-1,56 Y-14,93 E0.05 ; move to next point
G1 X-1,56 Y-14,93 E0.05 ; move to next point
G1 X-1,56 Y-14,93 E0.05 ; move to next point
G1 X-1,56 Y-14,93 E0.05 ; move to next point
G1 X-2,77 Y-14,75 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-2,77 Y-14,75 E0.05 ; move to next point
G1 X-2,77 Y-14,75 E0.05 ; move to next point
G1 X-2,77 Y-14,75 E0.05 ; move to next point
G1 X-3,96 Y-14,48 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-3,96 Y-14,48 E0.05 ; move to next point
G1 X-3,96 Y-14,48 E0.05 ; move to next point
G1 X-3,96 Y-14,48 E0.05 ; move to next point
G1 X-5,13 Y-14,11 E0.05 ; move to next point
G1 X-5,13 Y-14,11 E0.05 ; move to next point
G1 X-5,13 Y-14,11 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-11,16 Y-10,06 E0.05 ; move to next point
G1 X-11,16 Y-10,06 E0.05 ; move to next point
G1 X-11,16 Y-10,06 E0.05 ; move to next point
G1 X-11,95 Y-9,12 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-11,95 Y-9,12 E0.05 ; move to next point
G1 X-11,95 Y-9,12 E0.05 ; move to next point
G1 X-11,95 Y-9,12 E0.05 ; move to next point
G1 X-12,65 Y-8,12 E0.05 ; move to next point
G1 X-12,65 Y-8,12 E0.05 ; move to next point
G1 X-12,65 Y-8,12 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-14,24 Y-4,82 E0.05 ; move to next point
G1 X-14,24 Y-4,82 E0.05 ; move to next point
G1 X-14,24 Y-4,82 E0.05 ; move to next point
G1 X-14,58 Y-3,64 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-14,58 Y-3,64 E0.05 ; move to next point
G1 X-14,58 Y-3,64 E0.05 ; move to next point
G1 X-14,58 Y-3,64 E0.05 ; move to next point
G1 X-14,58 Y-3,64 E0.05 ; move to next point
G1 X-14,83 Y-2,44 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-14,83 Y-2,44 E0.05 ; move to next point
G1 X-14,83 Y-2,44 E0.05 ; move to next point
G1 X-14,83 Y-2,44 E0.05 ; move to next point
G1 X-14,98 Y-1,23 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-14,98 Y-1,23 E0.05 ; move to next point
G1 X-14,98 Y-1,23 E0.05 ; move to next point
G1 X-14,98 Y-1,23 E0.05 ; move to next point
G1 X-15,03 Y-0,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-42,33 Y-8,28 E0.05 ; move to next point
G1 X-42,33 Y-8,28 E0.05 ; move to next point
G1 X-42,08 Y-7,44 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-42,48 Y-9,14 E0.05 ; move to next point
G1 X-42,48 Y-9,14 E0.05 ; move to next point
G1 X-42,53 Y-10,01 E0.05 ; move to next point
G1 X-42,53 Y-10,01 E0.05 ; move to next point
G1 X-42,53 Y-10,01 E0.05 ; move to next point
G1 X-42,33 Y-8,28 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-42,08 Y-7,44 E0.05 ; move to next point
G1 X-42,08 Y-7,44 E0.05 ; move to next point
G1 X-41,73 Y-6,64 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-41,73 Y-6,64 E0.05 ; move to next point
G1 X-41,73 Y-6,64 E0.05 ; move to next point
G1 X-41,3 Y-5,88 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-41,3 Y-5,88 E0.05 ; move to next point
G1 X-41,3 Y-5,88 E0.05 ; move to next point
G1 X-40,78 Y-5,18 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-40,78 Y-5,18 E0.05 ; move to next point
G1 X-40,78 Y-5,18 E0.05 ; move to next point
G1 X-40,18 Y-4,55 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-40,18 Y-4,55 E0.05 ; move to next point
G1 X-40,18 Y-4,55 E0.05 ; move to next point
G1 X-39,51 Y-3,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-39,51 Y-3,99 E0.05 ; move to next point
G1 X-39,51 Y-3,99 E0.05 ; move to next point
G1 X-39,51 Y-3,99 E0.05 ; move to next point
G1 X-38,78 Y-3,51 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-38,78 Y-3,51 E0.05 ; move to next point
G1 X-38,78 Y-3,51 E0.05 ; move to next point
G1 X-38,78 Y-3,51 E0.05 ; move to next point
G1 X-38 Y-3,12 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-38 Y-3,12 E0.05 ; move to next point
G1 X-38 Y-3,12 E0.05 ; move to next point
G1 X-38 Y-3,12 E0.05 ; move to next point
G1 X-37,18 Y-2,82 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-37,18 Y-2,82 E0.05 ; move to next point
G1 X-37,18 Y-2,82 E0.05 ; move to next point
G1 X-36,33 Y-2,62 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-36,33 Y-2,62 E0.05 ; move to next point
G1 X-36,33 Y-2,62 E0.05 ; move to next point
G1 X-36,33 Y-2,62 E0.05 ; move to next point
G1 X-36,33 Y-2,62 E0.05 ; move to next point
G1 X-35,47 Y-2,52 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-35,47 Y-2,52 E0.05 ; move to next point
G1 X-35,47 Y-2,52 E0.05 ; move to next point
G1 X-35,47 Y-2,52 E0.05 ; move to next point
G1 X-34,6 Y-2,52 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-34,6 Y-2,52 E0.05 ; move to next point
G1 X-34,6 Y-2,52 E0.05 ; move to next point
G1 X-33,73 Y-2,62 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-33,73 Y-2,62 E0.05 ; move to next point
G1 X-33,73 Y-2,62 E0.05 ; move to next point
G1 X-32,88 Y-2,82 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-32,88 Y-2,82 E0.05 ; move to next point
G1 X-32,88 Y-2,82 E0.05 ; move to next point
G1 X-32,88 Y-2,82 E0.05 ; move to next point
G1 X-32,06 Y-3,12 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-32,06 Y-3,12 E0.05 ; move to next point
G1 X-32,06 Y-3,12 E0.05 ; move to next point
G1 X-31,28 Y-3,51 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-31,28 Y-3,51 E0.05 ; move to next point
G1 X-31,28 Y-3,51 E0.05 ; move to next point
G1 X-31,28 Y-3,51 E0.05 ; move to next point
G1 X-30,55 Y-3,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-30,55 Y-3,99 E0.05 ; move to next point
G1 X-30,55 Y-3,99 E0.05 ; move to next point
G1 X-30,55 Y-3,99 E0.05 ; move to next point
G1 X-29,88 Y-4,55 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-29,88 Y-4,55 E0.05 ; move to next point
G1 X-29,88 Y-4,55 E0.05 ; move to next point
G1 X-29,29 Y-5,18 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-29,29 Y-5,18 E0.05 ; move to next point
G1 X-29,29 Y-5,18 E0.05 ; move to next point
G1 X-28,77 Y-5,88 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-28,77 Y-5,88 E0.05 ; move to next point
G1 X-28,77 Y-5,88 E0.05 ; move to next point
G1 X-28,77 Y-5,88 E0.05 ; move to next point
G1 X-28,33 Y-6,64 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-28,33 Y-6,64 E0.05 ; move to next point
G1 X-28,33 Y-6,64 E0.05 ; move to next point
G1 X-27,98 Y-7,44 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-27,98 Y-7,44 E0.05 ; move to next point
G1 X-27,98 Y-7,44 E0.05 ; move to next point
G1 X-27,98 Y-7,44 E0.05 ; move to next point
G1 X-27,73 Y-8,28 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-27,73 Y-8,28 E0.05 ; move to next point
G1 X-27,73 Y-8,28 E0.05 ; move to next point
G1 X-27,58 Y-9,14 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-27,58 Y-9,14 E0.05 ; move to next point
G1 X-27,58 Y-9,14 E0.05 ; move to next point
G1 X-27,58 Y-9,14 E0.05 ; move to next point
G1 X-27,53 Y-10,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-27,53 Y-10,01 E0.05 ; move to next point
G1 X-27,53 Y-10,01 E0.05 ; move to next point
G1 X-27,58 Y-10,88 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-27,58 Y-10,88 E0.05 ; move to next point
G1 X-27,58 Y-10,88 E0.05 ; move to next point
G1 X-27,58 Y-10,88 E0.05 ; move to next point
G1 X-27,73 Y-11,74 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-27,73 Y-11,74 E0.05 ; move to next point
G1 X-27,73 Y-11,74 E0.05 ; move to next point
G1 X-27,98 Y-12,57 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-27,98 Y-12,57 E0.05 ; move to next point
G1 X-27,98 Y-12,57 E0.05 ; move to next point
G1 X-27,98 Y-12,57 E0.05 ; move to next point
G1 X-28,33 Y-13,37 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-28,33 Y-13,37 E0.05 ; move to next point
G1 X-28,33 Y-13,37 E0.05 ; move to next point
G1 X-28,77 Y-14,13 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-28,77 Y-14,13 E0.05 ; move to next point
G1 X-28,77 Y-14,13 E0.05 ; move to next point
G1 X-28,77 Y-14,13 E0.05 ; move to next point
G1 X-29,29 Y-14,83 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-29,29 Y-14,83 E0.05 ; move to next point
G1 X-29,29 Y-14,83 E0.05 ; move to next point
G1 X-29,29 Y-14,83 E0.05 ; move to next point
G1 X-29,88 Y-15,46 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-29,88 Y-15,46 E0.05 ; move to next point
G1 X-29,88 Y-15,46 E0.05 ; move to next point
G1 X-30,55 Y-16,02 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-30,55 Y-16,02 E0.05 ; move to next point
G1 X-30,55 Y-16,02 E0.05 ; move to next point
G1 X-31,28 Y-16,5 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-31,28 Y-16,5 E0.05 ; move to next point
G1 X-31,28 Y-16,5 E0.05 ; move to next point
G1 X-31,28 Y-16,5 E0.05 ; move to next point
G1 X-32,06 Y-16,89 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-32,06 Y-16,89 E0.05 ; move to next point
G1 X-32,06 Y-16,89 E0.05 ; move to next point
G1 X-32,88 Y-17,19 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-32,88 Y-17,19 E0.05 ; move to next point
G1 X-32,88 Y-17,19 E0.05 ; move to next point
G1 X-33,73 Y-17,39 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-33,73 Y-17,39 E0.05 ; move to next point
G1 X-33,73 Y-17,39 E0.05 ; move to next point
G1 X-34,6 Y-17,49 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-34,6 Y-17,49 E0.05 ; move to next point
G1 X-34,6 Y-17,49 E0.05 ; move to next point
G1 X-35,47 Y-17,49 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-35,47 Y-17,49 E0.05 ; move to next point
G1 X-35,47 Y-17,49 E0.05 ; move to next point
G1 X-36,33 Y-17,39 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-36,33 Y-17,39 E0.05 ; move to next point
G1 X-36,33 Y-17,39 E0.05 ; move to next point
G1 X-37,18 Y-17,19 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-37,18 Y-17,19 E0.05 ; move to next point
G1 X-37,18 Y-17,19 E0.05 ; move to next point
G1 X-38 Y-16,89 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-38 Y-16,89 E0.05 ; move to next point
G1 X-38 Y-16,89 E0.05 ; move to next point
G1 X-38,78 Y-16,5 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-38,78 Y-16,5 E0.05 ; move to next point
G1 X-38,78 Y-16,5 E0.05 ; move to next point
G1 X-39,51 Y-16,02 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-39,51 Y-16,02 E0.05 ; move to next point
G1 X-39,51 Y-16,02 E0.05 ; move to next point
G1 X-40,18 Y-15,46 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-40,18 Y-15,46 E0.05 ; move to next point
G1 X-40,18 Y-15,46 E0.05 ; move to next point
G1 X-40,78 Y-14,83 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-40,78 Y-14,83 E0.05 ; move to next point
G1 X-40,78 Y-14,83 E0.05 ; move to next point
G1 X-41,3 Y-14,13 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-41,3 Y-14,13 E0.05 ; move to next point
G1 X-41,3 Y-14,13 E0.05 ; move to next point
G1 X-41,73 Y-13,37 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-41,73 Y-13,37 E0.05 ; move to next point
G1 X-41,73 Y-13,37 E0.05 ; move to next point
G1 X-42,08 Y-12,57 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-42,08 Y-12,57 E0.05 ; move to next point
G1 X-42,08 Y-12,57 E0.05 ; move to next point
G1 X-42,33 Y-11,74 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-42,33 Y-11,74 E0.05 ; move to next point
G1 X-42,33 Y-11,74 E0.05 ; move to next point
G1 X-42,48 Y-10,88 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-42,48 Y-10,88 E0.05 ; move to next point
G1 X-42,48 Y-10,88 E0.05 ; move to next point
G1 X-42,53 Y-10,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-42,33 Y11,72 E0.05 ; move to next point
G1 X-42,33 Y11,72 E0.05 ; move to next point
G1 X-42,08 Y12,56 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-42,48 Y10,86 E0.05 ; move to next point
G1 X-42,48 Y10,86 E0.05 ; move to next point
G1 X-42,53 Y9,99 E0.05 ; move to next point
G1 X-42,53 Y9,99 E0.05 ; move to next point
G1 X-42,53 Y9,99 E0.05 ; move to next point
G1 X-42,33 Y11,72 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-42,08 Y12,56 E0.05 ; move to next point
G1 X-42,08 Y12,56 E0.05 ; move to next point
G1 X-41,73 Y13,36 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-41,73 Y13,36 E0.05 ; move to next point
G1 X-41,73 Y13,36 E0.05 ; move to next point
G1 X-41,3 Y14,12 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-41,3 Y14,12 E0.05 ; move to next point
G1 X-41,3 Y14,12 E0.05 ; move to next point
G1 X-40,78 Y14,82 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-40,78 Y14,82 E0.05 ; move to next point
G1 X-40,78 Y14,82 E0.05 ; move to next point
G1 X-40,18 Y15,45 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-40,18 Y15,45 E0.05 ; move to next point
G1 X-40,18 Y15,45 E0.05 ; move to next point
G1 X-39,51 Y16,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-39,51 Y16,01 E0.05 ; move to next point
G1 X-39,51 Y16,01 E0.05 ; move to next point
G1 X-38,78 Y16,49 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-38,78 Y16,49 E0.05 ; move to next point
G1 X-38,78 Y16,49 E0.05 ; move to next point
G1 X-38 Y16,88 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-38 Y16,88 E0.05 ; move to next point
G1 X-38 Y16,88 E0.05 ; move to next point
G1 X-37,18 Y17,18 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-37,18 Y17,18 E0.05 ; move to next point
G1 X-37,18 Y17,18 E0.05 ; move to next point
G1 X-36,33 Y17,38 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-36,33 Y17,38 E0.05 ; move to next point
G1 X-36,33 Y17,38 E0.05 ; move to next point
G1 X-35,47 Y17,48 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-35,47 Y17,48 E0.05 ; move to next point
G1 X-35,47 Y17,48 E0.05 ; move to next point
G1 X-34,6 Y17,48 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-34,6 Y17,48 E0.05 ; move to next point
G1 X-34,6 Y17,48 E0.05 ; move to next point
G1 X-33,73 Y17,38 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-33,73 Y17,38 E0.05 ; move to next point
G1 X-33,73 Y17,38 E0.05 ; move to next point
G1 X-32,88 Y17,18 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-32,88 Y17,18 E0.05 ; move to next point
G1 X-32,88 Y17,18 E0.05 ; move to next point
G1 X-32,06 Y16,88 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-32,06 Y16,88 E0.05 ; move to next point
G1 X-32,06 Y16,88 E0.05 ; move to next point
G1 X-31,28 Y16,49 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-31,28 Y16,49 E0.05 ; move to next point
G1 X-31,28 Y16,49 E0.05 ; move to next point
G1 X-31,28 Y16,49 E0.05 ; move to next point
G1 X-30,55 Y16,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-30,55 Y16,01 E0.05 ; move to next point
G1 X-30,55 Y16,01 E0.05 ; move to next point
G1 X-29,88 Y15,45 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-29,88 Y15,45 E0.05 ; move to next point
G1 X-29,88 Y15,45 E0.05 ; move to next point
G1 X-29,29 Y14,82 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-29,29 Y14,82 E0.05 ; move to next point
G1 X-29,29 Y14,82 E0.05 ; move to next point
G1 X-29,29 Y14,82 E0.05 ; move to next point
G1 X-28,77 Y14,12 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-28,77 Y14,12 E0.05 ; move to next point
G1 X-28,77 Y14,12 E0.05 ; move to next point
G1 X-28,77 Y14,12 E0.05 ; move to next point
G1 X-28,33 Y13,36 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-28,33 Y13,36 E0.05 ; move to next point
G1 X-28,33 Y13,36 E0.05 ; move to next point
G1 X-27,98 Y12,56 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-27,98 Y12,56 E0.05 ; move to next point
G1 X-27,98 Y12,56 E0.05 ; move to next point
G1 X-27,98 Y12,56 E0.05 ; move to next point
G1 X-27,73 Y11,72 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-27,73 Y11,72 E0.05 ; move to next point
G1 X-27,73 Y11,72 E0.05 ; move to next point
G1 X-27,58 Y10,86 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-27,58 Y10,86 E0.05 ; move to next point
G1 X-27,58 Y10,86 E0.05 ; move to next point
G1 X-27,58 Y10,86 E0.05 ; move to next point
G1 X-27,53 Y9,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-27,53 Y9,99 E0.05 ; move to next point
G1 X-27,53 Y9,99 E0.05 ; move to next point
G1 X-27,58 Y9,12 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-27,58 Y9,12 E0.05 ; move to next point
G1 X-27,58 Y9,12 E0.05 ; move to next point
G1 X-27,58 Y9,12 E0.05 ; move to next point
G1 X-27,73 Y8,26 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-27,73 Y8,26 E0.05 ; move to next point
G1 X-27,73 Y8,26 E0.05 ; move to next point
G1 X-27,98 Y7,43 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-27,98 Y7,43 E0.05 ; move to next point
G1 X-27,98 Y7,43 E0.05 ; move to next point
G1 X-27,98 Y7,43 E0.05 ; move to next point
G1 X-28,33 Y6,63 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-28,33 Y6,63 E0.05 ; move to next point
G1 X-28,33 Y6,63 E0.05 ; move to next point
G1 X-28,77 Y5,87 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-28,77 Y5,87 E0.05 ; move to next point
G1 X-28,77 Y5,87 E0.05 ; move to next point
G1 X-28,77 Y5,87 E0.05 ; move to next point
G1 X-29,29 Y5,17 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-29,29 Y5,17 E0.05 ; move to next point
G1 X-29,29 Y5,17 E0.05 ; move to next point
G1 X-29,88 Y4,54 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-29,88 Y4,54 E0.05 ; move to next point
G1 X-29,88 Y4,54 E0.05 ; move to next point
G1 X-29,88 Y4,54 E0.05 ; move to next point
G1 X-30,55 Y3,98 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-30,55 Y3,98 E0.05 ; move to next point
G1 X-30,55 Y3,98 E0.05 ; move to next point
G1 X-31,28 Y3,5 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-31,28 Y3,5 E0.05 ; move to next point
G1 X-31,28 Y3,5 E0.05 ; move to next point
G1 X-31,28 Y3,5 E0.05 ; move to next point
G1 X-32,06 Y3,11 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-32,06 Y3,11 E0.05 ; move to next point
G1 X-32,06 Y3,11 E0.05 ; move to next point
G1 X-32,88 Y2,81 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-32,88 Y2,81 E0.05 ; move to next point
G1 X-32,88 Y2,81 E0.05 ; move to next point
G1 X-32,88 Y2,81 E0.05 ; move to next point
G1 X-33,73 Y2,61 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-33,73 Y2,61 E0.05 ; move to next point
G1 X-33,73 Y2,61 E0.05 ; move to next point
G1 X-34,6 Y2,51 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-34,6 Y2,51 E0.05 ; move to next point
G1 X-34,6 Y2,51 E0.05 ; move to next point
G1 X-34,6 Y2,51 E0.05 ; move to next point
G1 X-35,47 Y2,51 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-35,47 Y2,51 E0.05 ; move to next point
G1 X-35,47 Y2,51 E0.05 ; move to next point
G1 X-36,33 Y2,61 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-36,33 Y2,61 E0.05 ; move to next point
G1 X-36,33 Y2,61 E0.05 ; move to next point
G1 X-36,33 Y2,61 E0.05 ; move to next point
G1 X-36,33 Y2,61 E0.05 ; move to next point
G1 X-37,18 Y2,81 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-37,18 Y2,81 E0.05 ; move to next point
G1 X-37,18 Y2,81 E0.05 ; move to next point
G1 X-38 Y3,11 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-38 Y3,11 E0.05 ; move to next point
G1 X-38 Y3,11 E0.05 ; move to next point
G1 X-38 Y3,11 E0.05 ; move to next point
G1 X-38,78 Y3,5 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-38,78 Y3,5 E0.05 ; move to next point
G1 X-38,78 Y3,5 E0.05 ; move to next point
G1 X-38,78 Y3,5 E0.05 ; move to next point
G1 X-39,51 Y3,98 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-39,51 Y3,98 E0.05 ; move to next point
G1 X-39,51 Y3,98 E0.05 ; move to next point
G1 X-39,51 Y3,98 E0.05 ; move to next point
G1 X-40,18 Y4,54 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-40,18 Y4,54 E0.05 ; move to next point
G1 X-40,18 Y4,54 E0.05 ; move to next point
G1 X-40,78 Y5,17 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-40,78 Y5,17 E0.05 ; move to next point
G1 X-40,78 Y5,17 E0.05 ; move to next point
G1 X-41,3 Y5,87 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-41,3 Y5,87 E0.05 ; move to next point
G1 X-41,3 Y5,87 E0.05 ; move to next point
G1 X-41,73 Y6,63 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-41,73 Y6,63 E0.05 ; move to next point
G1 X-41,73 Y6,63 E0.05 ; move to next point
G1 X-42,08 Y7,43 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-42,08 Y7,43 E0.05 ; move to next point
G1 X-42,08 Y7,43 E0.05 ; move to next point
G1 X-42,33 Y8,26 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-42,33 Y8,26 E0.05 ; move to next point
G1 X-42,33 Y8,26 E0.05 ; move to next point
G1 X-42,48 Y9,12 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-42,48 Y9,12 E0.05 ; move to next point
G1 X-42,48 Y9,12 E0.05 ; move to next point
G1 X-42,53 Y9,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X15,73 Y-12,66 E0.05 ; move to next point
G1 X15,73 Y-12,66 E0.05 ; move to next point
G1 X15,73 Y-12,66 E0.05 ; move to next point
G1 X15,4 Y-12,04 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X16,14 Y-13,22 E0.05 ; move to next point
G1 X16,14 Y-13,22 E0.05 ; move to next point
G1 X16,14 Y-13,22 E0.05 ; move to next point
G1 X15,73 Y-12,66 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X21,14 Y-3,22 E0.05 ; move to next point
G1 X20,73 Y-2,66 E0.05 ; move to next point
G1 X20,73 Y-2,66 E0.05 ; move to next point
G1 X20,73 Y-2,66 E0.05 ; move to next point
G1 X20,4 Y-2,04 E0.05 ; move to next point
G1 X20,4 Y-2,04 E0.05 ; move to next point
G1 X20,16 Y-1,38 E0.05 ; move to next point
G1 X20,02 Y-0,7 E0.05 ; move to next point
G1 X19,97 Y-0,01 E0.05 ; move to next point
G1 X20,02 Y0,69 E0.05 ; move to next point
G1 X20,02 Y0,69 E0.05 ; move to next point
G1 X20,02 Y0,69 E0.05 ; move to next point
G1 X20,16 Y1,37 E0.05 ; move to next point
G1 X20,16 Y1,37 E0.05 ; move to next point
G1 X20,16 Y1,37 E0.05 ; move to next point
G1 X20,4 Y2,03 E0.05 ; move to next point
G1 X20,4 Y2,03 E0.05 ; move to next point
G1 X20,73 Y2,64 E0.05 ; move to next point
G1 X20,73 Y2,64 E0.05 ; move to next point
G1 X20,73 Y2,64 E0.05 ; move to next point
G1 X21,14 Y3,21 E0.05 ; move to next point
G1 X21,14 Y3,21 E0.05 ; move to next point
G1 X21,62 Y3,71 E0.05 ; move to next point
G1 X21,62 Y3,71 E0.05 ; move to next point
G1 X22,17 Y4,14 E0.05 ; move to next point
G1 X22,17 Y4,14 E0.05 ; move to next point
G1 X22,78 Y4,49 E0.05 ; move to next point
G1 X22,78 Y4,49 E0.05 ; move to next point
G1 X23,42 Y4,75 E0.05 ; move to next point
G1 X23,42 Y4,75 E0.05 ; move to next point
G1 X24,1 Y4,92 E0.05 ; move to next point
G1 X24,1 Y4,92 E0.05 ; move to next point
G1 X24,79 Y4,99 E0.05 ; move to next point
G1 X24,79 Y4,99 E0.05 ; move to next point
G1 X25,49 Y4,97 E0.05 ; move to next point
G1 X25,49 Y4,97 E0.05 ; move to next point
G1 X26,18 Y4,85 E0.05 ; move to next point
G1 X26,18 Y4,85 E0.05 ; move to next point
G1 X26,84 Y4,63 E0.05 ; move to next point
G1 X26,84 Y4,63 E0.05 ; move to next point
G1 X27,47 Y4,32 E0.05 ; move to next point
G1 X27,47 Y4,32 E0.05 ; move to next point
G1 X28,05 Y3,93 E0.05 ; move to next point
G1 X28,05 Y3,93 E0.05 ; move to next point
G1 X28,57 Y3,47 E0.05 ; move to next point
G1 X28,57 Y3,47 E0.05 ; move to next point
G1 X29,01 Y2,93 E0.05 ; move to next point
G1 X29,01 Y2,93 E0.05 ; move to next point
G1 X29,38 Y2,34 E0.05 ; move to next point
G1 X29,38 Y2,34 E0.05 ; move to next point
G1 X29,67 Y1,7 E0.05 ; move to next point
G1 X29,67 Y1,7 E0.05 ; move to next point
G1 X29,86 Y1,03 E0.05 ; move to next point
G1 X29,86 Y1,03 E0.05 ; move to next point
G1 X29,96 Y0,34 E0.05 ; move to next point
G1 X29,96 Y0,34 E0.05 ; move to next point
G1 X29,96 Y-0,35 E0.05 ; move to next point
G1 X29,96 Y-0,35 E0.05 ; move to next point
G1 X29,86 Y-1,05 E0.05 ; move to next point
G1 X29,86 Y-1,05 E0.05 ; move to next point
G1 X29,67 Y-1,72 E0.05 ; move to next point
G1 X29,67 Y-1,72 E0.05 ; move to next point
G1 X29,38 Y-2,35 E0.05 ; move to next point
G1 X29,38 Y-2,35 E0.05 ; move to next point
G1 X29,01 Y-2,94 E0.05 ; move to next point
G1 X29,01 Y-2,94 E0.05 ; move to next point
G1 X28,57 Y-3,48 E0.05 ; move to next point
G1 X28,57 Y-3,48 E0.05 ; move to next point
G1 X28,05 Y-3,95 E0.05 ; move to next point
G1 X28,05 Y-3,95 E0.05 ; move to next point
G1 X27,47 Y-4,34 E0.05 ; move to next point
G1 X27,47 Y-4,34 E0.05 ; move to next point
G1 X26,84 Y-4,64 E0.05 ; move to next point
G1 X26,84 Y-4,64 E0.05 ; move to next point
G1 X26,18 Y-4,86 E0.05 ; move to next point
G1 X26,18 Y-4,86 E0.05 ; move to next point
G1 X25,49 Y-4,98 E0.05 ; move to next point
G1 X25,49 Y-4,98 E0.05 ; move to next point
G1 X24,79 Y-5 E0.05 ; move to next point
G1 X24,79 Y-5 E0.05 ; move to next point
G1 X24,1 Y-4,93 E0.05 ; move to next point
G1 X24,1 Y-4,93 E0.05 ; move to next point
G1 X23,42 Y-4,76 E0.05 ; move to next point
G1 X23,42 Y-4,76 E0.05 ; move to next point
G1 X22,78 Y-4,5 E0.05 ; move to next point
G1 X22,78 Y-4,5 E0.05 ; move to next point
G1 X22,17 Y-4,15 E0.05 ; move to next point
G1 X22,17 Y-4,15 E0.05 ; move to next point
G1 X21,62 Y-3,72 E0.05 ; move to next point
G1 X21,62 Y-3,72 E0.05 ; move to next point
G1 X21,14 Y-3,22 E0.05 ; move to next point
G1 X21,14 Y-3,22 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X20,02 Y-0,7 E0.05 ; move to next point
G1 X20,02 Y-0,7 E0.05 ; move to next point
G1 X20,02 Y-0,7 E0.05 ; move to next point
G1 X20,02 Y-0,7 E0.05 ; move to next point
G1 X20,02 Y-0,7 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X15,16 Y-8,63 E0.05 ; move to next point
G1 X15,16 Y-8,63 E0.05 ; move to next point
G1 X15,16 Y-8,63 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X15,02 Y-9,31 E0.05 ; move to next point
G1 X15,02 Y-9,31 E0.05 ; move to next point
G1 X15,02 Y-9,31 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X17,17 Y-5,86 E0.05 ; move to next point
G1 X17,17 Y-5,86 E0.05 ; move to next point
G1 X16,62 Y-6,29 E0.05 ; move to next point
G1 X16,14 Y-6,79 E0.05 ; move to next point
G1 X15,73 Y-7,36 E0.05 ; move to next point
G1 X15,4 Y-7,97 E0.05 ; move to next point
G1 X15,16 Y-8,63 E0.05 ; move to next point
G1 X15,02 Y-9,31 E0.05 ; move to next point
G1 X14,97 Y-10,01 E0.05 ; move to next point
G1 X14,97 Y-10,01 E0.05 ; move to next point
G1 X15,02 Y-10,7 E0.05 ; move to next point
G1 X15,02 Y-10,7 E0.05 ; move to next point
G1 X15,02 Y-10,7 E0.05 ; move to next point
G1 X17,78 Y-5,51 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X15,4 Y-7,97 E0.05 ; move to next point
G1 X15,4 Y-7,97 E0.05 ; move to next point
G1 X15,4 Y-7,97 E0.05 ; move to next point
G1 X15,4 Y-7,97 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X15,73 Y-7,36 E0.05 ; move to next point
G1 X15,73 Y-7,36 E0.05 ; move to next point
G1 X15,73 Y-7,36 E0.05 ; move to next point
G1 X15,73 Y-7,36 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X16,14 Y-6,79 E0.05 ; move to next point
G1 X16,14 Y-6,79 E0.05 ; move to next point
G1 X16,14 Y-6,79 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X16,62 Y-6,29 E0.05 ; move to next point
G1 X16,62 Y-6,29 E0.05 ; move to next point
G1 X16,62 Y-6,29 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X17,78 Y-5,51 E0.05 ; move to next point
G1 X17,78 Y-5,51 E0.05 ; move to next point
G1 X17,78 Y-5,51 E0.05 ; move to next point
G1 X18,42 Y-5,25 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X18,42 Y-5,25 E0.05 ; move to next point
G1 X18,42 Y-5,25 E0.05 ; move to next point
G1 X18,42 Y-5,25 E0.05 ; move to next point
G1 X19,1 Y-5,08 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X19,1 Y-5,08 E0.05 ; move to next point
G1 X19,1 Y-5,08 E0.05 ; move to next point
G1 X19,79 Y-5,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X19,79 Y-5,01 E0.05 ; move to next point
G1 X19,79 Y-5,01 E0.05 ; move to next point
G1 X19,79 Y-5,01 E0.05 ; move to next point
G1 X20,49 Y-5,03 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X20,49 Y-5,03 E0.05 ; move to next point
G1 X20,49 Y-5,03 E0.05 ; move to next point
G1 X21,18 Y-5,15 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X21,18 Y-5,15 E0.05 ; move to next point
G1 X21,18 Y-5,15 E0.05 ; move to next point
G1 X21,18 Y-5,15 E0.05 ; move to next point
G1 X21,84 Y-5,37 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X21,84 Y-5,37 E0.05 ; move to next point
G1 X21,84 Y-5,37 E0.05 ; move to next point
G1 X22,47 Y-5,68 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X22,47 Y-5,68 E0.05 ; move to next point
G1 X22,47 Y-5,68 E0.05 ; move to next point
G1 X22,47 Y-5,68 E0.05 ; move to next point
G1 X23,05 Y-6,07 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X23,05 Y-6,07 E0.05 ; move to next point
G1 X23,05 Y-6,07 E0.05 ; move to next point
G1 X23,57 Y-6,53 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-29,98 Y-0,7 E0.05 ; move to next point
G1 X-29,98 Y-0,7 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X23,57 Y-6,53 E0.05 ; move to next point
G1 X23,57 Y-6,53 E0.05 ; move to next point
G1 X24,01 Y-7,07 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X20,49 Y-14,98 E0.05 ; move to next point
G1 X20,49 Y-14,98 E0.05 ; move to next point
G1 X20,49 Y-14,98 E0.05 ; move to next point
G1 X19,79 Y-15 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,01 Y-7,07 E0.05 ; move to next point
G1 X24,01 Y-7,07 E0.05 ; move to next point
G1 X24,01 Y-7,07 E0.05 ; move to next point
G1 X24,38 Y-7,66 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X21,18 Y-14,86 E0.05 ; move to next point
G1 X21,18 Y-14,86 E0.05 ; move to next point
G1 X20,49 Y-14,98 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,38 Y-7,66 E0.05 ; move to next point
G1 X24,38 Y-7,66 E0.05 ; move to next point
G1 X24,67 Y-8,3 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-20,33 Y-1,72 E0.05 ; move to next point
G1 X-20,62 Y-2,35 E0.05 ; move to next point
G1 X-20,62 Y-2,35 E0.05 ; move to next point
G1 X-20,62 Y-2,35 E0.05 ; move to next point
G1 X-20,99 Y-2,94 E0.05 ; move to next point
G1 X-20,99 Y-2,94 E0.05 ; move to next point
G1 X-21,43 Y-3,48 E0.05 ; move to next point
G1 X-21,43 Y-3,48 E0.05 ; move to next point
G1 X-21,95 Y-3,95 E0.05 ; move to next point
G1 X-21,95 Y-3,95 E0.05 ; move to next point
G1 X-22,53 Y-4,34 E0.05 ; move to next point
G1 X-22,53 Y-4,34 E0.05 ; move to next point
G1 X-23,16 Y-4,64 E0.05 ; move to next point
G1 X-23,16 Y-4,64 E0.05 ; move to next point
G1 X-23,82 Y-4,86 E0.05 ; move to next point
G1 X-23,82 Y-4,86 E0.05 ; move to next point
G1 X-24,51 Y-4,98 E0.05 ; move to next point
G1 X-24,51 Y-4,98 E0.05 ; move to next point
G1 X-25,21 Y-5 E0.05 ; move to next point
G1 X-25,21 Y-5 E0.05 ; move to next point
G1 X-25,9 Y-4,93 E0.05 ; move to next point
G1 X-25,9 Y-4,93 E0.05 ; move to next point
G1 X-26,58 Y-4,76 E0.05 ; move to next point
G1 X-26,58 Y-4,76 E0.05 ; move to next point
G1 X-27,22 Y-4,5 E0.05 ; move to next point
G1 X-27,22 Y-4,5 E0.05 ; move to next point
G1 X-27,83 Y-4,15 E0.05 ; move to next point
G1 X-27,83 Y-4,15 E0.05 ; move to next point
G1 X-28,38 Y-3,72 E0.05 ; move to next point
G1 X-28,38 Y-3,72 E0.05 ; move to next point
G1 X-28,86 Y-3,22 E0.05 ; move to next point
G1 X-28,86 Y-3,22 E0.05 ; move to next point
G1 X-29,27 Y-2,66 E0.05 ; move to next point
G1 X-29,27 Y-2,66 E0.05 ; move to next point
G1 X-29,6 Y-2,04 E0.05 ; move to next point
G1 X-29,6 Y-2,04 E0.05 ; move to next point
G1 X-29,84 Y-1,38 E0.05 ; move to next point
G1 X-29,84 Y-1,38 E0.05 ; move to next point
G1 X-29,98 Y-0,7 E0.05 ; move to next point
G1 X-30,03 Y-0,01 E0.05 ; move to next point
G1 X-29,98 Y0,69 E0.05 ; move to next point
G1 X-29,98 Y0,69 E0.05 ; move to next point
G1 X-29,84 Y1,37 E0.05 ; move to next point
G1 X-29,84 Y1,37 E0.05 ; move to next point
G1 X-29,6 Y2,03 E0.05 ; move to next point
G1 X-29,6 Y2,03 E0.05 ; move to next point
G1 X-29,27 Y2,64 E0.05 ; move to next point
G1 X-29,27 Y2,64 E0.05 ; move to next point
G1 X-28,86 Y3,21 E0.05 ; move to next point
G1 X-28,86 Y3,21 E0.05 ; move to next point
G1 X-28,38 Y3,71 E0.05 ; move to next point
G1 X-28,38 Y3,71 E0.05 ; move to next point
G1 X-27,83 Y4,14 E0.05 ; move to next point
G1 X-27,83 Y4,14 E0.05 ; move to next point
G1 X-27,22 Y4,49 E0.05 ; move to next point
G1 X-27,22 Y4,49 E0.05 ; move to next point
G1 X-26,58 Y4,75 E0.05 ; move to next point
G1 X-26,58 Y4,75 E0.05 ; move to next point
G1 X-25,9 Y4,92 E0.05 ; move to next point
G1 X-25,9 Y4,92 E0.05 ; move to next point
G1 X-25,21 Y4,99 E0.05 ; move to next point
G1 X-25,21 Y4,99 E0.05 ; move to next point
G1 X-24,51 Y4,97 E0.05 ; move to next point
G1 X-24,51 Y4,97 E0.05 ; move to next point
G1 X-23,82 Y4,85 E0.05 ; move to next point
G1 X-23,82 Y4,85 E0.05 ; move to next point
G1 X-23,16 Y4,63 E0.05 ; move to next point
G1 X-23,16 Y4,63 E0.05 ; move to next point
G1 X-22,53 Y4,32 E0.05 ; move to next point
G1 X-22,53 Y4,32 E0.05 ; move to next point
G1 X-21,95 Y3,93 E0.05 ; move to next point
G1 X-21,95 Y3,93 E0.05 ; move to next point
G1 X-21,43 Y3,47 E0.05 ; move to next point
G1 X-21,43 Y3,47 E0.05 ; move to next point
G1 X-20,99 Y2,93 E0.05 ; move to next point
G1 X-20,99 Y2,93 E0.05 ; move to next point
G1 X-20,62 Y2,34 E0.05 ; move to next point
G1 X-20,62 Y2,34 E0.05 ; move to next point
G1 X-20,62 Y2,34 E0.05 ; move to next point
G1 X-20,33 Y1,7 E0.05 ; move to next point
G1 X-20,33 Y1,7 E0.05 ; move to next point
G1 X-20,33 Y1,7 E0.05 ; move to next point
G1 X-20,14 Y1,03 E0.05 ; move to next point
G1 X-20,14 Y1,03 E0.05 ; move to next point
G1 X-20,14 Y1,03 E0.05 ; move to next point
G1 X-20,04 Y0,34 E0.05 ; move to next point
G1 X-20,04 Y0,34 E0.05 ; move to next point
G1 X-20,04 Y0,34 E0.05 ; move to next point
G1 X-20,04 Y-0,35 E0.05 ; move to next point
G1 X-20,04 Y-0,35 E0.05 ; move to next point
G1 X-20,04 Y-0,35 E0.05 ; move to next point
G1 X-20,14 Y-1,05 E0.05 ; move to next point
G1 X-20,14 Y-1,05 E0.05 ; move to next point
G1 X-20,14 Y-1,05 E0.05 ; move to next point
G1 X-20,33 Y-1,72 E0.05 ; move to next point
G1 X-20,33 Y-1,72 E0.05 ; move to next point
G1 X-20,33 Y-1,72 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,67 Y-8,3 E0.05 ; move to next point
G1 X24,67 Y-8,3 E0.05 ; move to next point
G1 X24,86 Y-8,97 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,86 Y-8,97 E0.05 ; move to next point
G1 X24,86 Y-8,97 E0.05 ; move to next point
G1 X24,96 Y-9,66 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,96 Y-9,66 E0.05 ; move to next point
G1 X24,96 Y-9,66 E0.05 ; move to next point
G1 X24,96 Y-9,66 E0.05 ; move to next point
G1 X24,96 Y-10,35 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,96 Y-10,35 E0.05 ; move to next point
G1 X24,96 Y-10,35 E0.05 ; move to next point
G1 X24,86 Y-11,05 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,86 Y-11,05 E0.05 ; move to next point
G1 X24,86 Y-11,05 E0.05 ; move to next point
G1 X24,67 Y-11,72 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,67 Y-11,72 E0.05 ; move to next point
G1 X24,67 Y-11,72 E0.05 ; move to next point
G1 X24,38 Y-12,35 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,38 Y-12,35 E0.05 ; move to next point
G1 X24,38 Y-12,35 E0.05 ; move to next point
G1 X24,01 Y-12,94 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,01 Y-12,94 E0.05 ; move to next point
G1 X24,01 Y-12,94 E0.05 ; move to next point
G1 X23,57 Y-13,48 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X23,57 Y-13,48 E0.05 ; move to next point
G1 X23,57 Y-13,48 E0.05 ; move to next point
G1 X23,57 Y-13,48 E0.05 ; move to next point
G1 X23,05 Y-13,95 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X23,05 Y-13,95 E0.05 ; move to next point
G1 X23,05 Y-13,95 E0.05 ; move to next point
G1 X22,47 Y-14,34 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X22,47 Y-14,34 E0.05 ; move to next point
G1 X22,47 Y-14,34 E0.05 ; move to next point
G1 X21,84 Y-14,64 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X21,84 Y-14,64 E0.05 ; move to next point
G1 X21,84 Y-14,64 E0.05 ; move to next point
G1 X21,18 Y-14,86 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X17,17 Y-14,15 E0.05 ; move to next point
G1 X17,17 Y-14,15 E0.05 ; move to next point
G1 X17,17 Y-14,15 E0.05 ; move to next point
G1 X16,62 Y-13,72 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X16,62 Y-13,72 E0.05 ; move to next point
G1 X16,62 Y-13,72 E0.05 ; move to next point
G1 X16,14 Y-13,22 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X18,42 Y-14,76 E0.05 ; move to next point
G1 X18,42 Y-14,76 E0.05 ; move to next point
G1 X18,42 Y-14,76 E0.05 ; move to next point
G1 X17,78 Y-14,5 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X19,1 Y-14,93 E0.05 ; move to next point
G1 X19,1 Y-14,93 E0.05 ; move to next point
G1 X18,42 Y-14,76 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X19,79 Y-15 E0.05 ; move to next point
G1 X19,79 Y-15 E0.05 ; move to next point
G1 X19,1 Y-14,93 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X17,78 Y-14,5 E0.05 ; move to next point
G1 X17,78 Y-14,5 E0.05 ; move to next point
G1 X17,17 Y-14,15 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X15,4 Y-12,04 E0.05 ; move to next point
G1 X15,4 Y-12,04 E0.05 ; move to next point
G1 X15,16 Y-11,38 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X15,16 Y-11,38 E0.05 ; move to next point
G1 X15,16 Y-11,38 E0.05 ; move to next point
G1 X15,16 Y-11,38 E0.05 ; move to next point
G1 X15,02 Y-10,7 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-23,86 Y13,21 E0.05 ; move to next point
G1 X-23,86 Y13,21 E0.05 ; move to next point
G1 X-23,38 Y13,71 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-24,27 Y12,64 E0.05 ; move to next point
G1 X-24,27 Y12,64 E0.05 ; move to next point
G1 X-23,86 Y13,21 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-24,6 Y12,03 E0.05 ; move to next point
G1 X-24,6 Y12,03 E0.05 ; move to next point
G1 X-24,27 Y12,64 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-24,84 Y11,37 E0.05 ; move to next point
G1 X-24,84 Y11,37 E0.05 ; move to next point
G1 X-24,84 Y11,37 E0.05 ; move to next point
G1 X-24,6 Y12,03 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-24,98 Y10,69 E0.05 ; move to next point
G1 X-24,98 Y10,69 E0.05 ; move to next point
G1 X-25,03 Y9,99 E0.05 ; move to next point
G1 X-25,03 Y9,99 E0.05 ; move to next point
G1 X-24,98 Y9,3 E0.05 ; move to next point
G1 X-24,98 Y9,3 E0.05 ; move to next point
G1 X-24,84 Y8,62 E0.05 ; move to next point
G1 X-24,84 Y8,62 E0.05 ; move to next point
G1 X-24,6 Y7,96 E0.05 ; move to next point
G1 X-24,6 Y7,96 E0.05 ; move to next point
G1 X-24,6 Y7,96 E0.05 ; move to next point
G1 X-24,84 Y11,37 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-23,38 Y13,71 E0.05 ; move to next point
G1 X-23,38 Y13,71 E0.05 ; move to next point
G1 X-22,83 Y14,14 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-22,83 Y14,14 E0.05 ; move to next point
G1 X-22,83 Y14,14 E0.05 ; move to next point
G1 X-22,22 Y14,49 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-22,22 Y14,49 E0.05 ; move to next point
G1 X-22,22 Y14,49 E0.05 ; move to next point
G1 X-22,22 Y14,49 E0.05 ; move to next point
G1 X-21,58 Y14,75 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-21,58 Y14,75 E0.05 ; move to next point
G1 X-21,58 Y14,75 E0.05 ; move to next point
G1 X-20,9 Y14,92 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-20,9 Y14,92 E0.05 ; move to next point
G1 X-20,9 Y14,92 E0.05 ; move to next point
G1 X-20,21 Y14,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-20,21 Y14,99 E0.05 ; move to next point
G1 X-20,21 Y14,99 E0.05 ; move to next point
G1 X-19,51 Y14,97 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-19,51 Y14,97 E0.05 ; move to next point
G1 X-19,51 Y14,97 E0.05 ; move to next point
G1 X-19,51 Y14,97 E0.05 ; move to next point
G1 X-18,82 Y14,85 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-18,82 Y14,85 E0.05 ; move to next point
G1 X-18,82 Y14,85 E0.05 ; move to next point
G1 X-18,16 Y14,63 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-18,16 Y14,63 E0.05 ; move to next point
G1 X-18,16 Y14,63 E0.05 ; move to next point
G1 X-18,16 Y14,63 E0.05 ; move to next point
G1 X-17,53 Y14,32 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-17,53 Y14,32 E0.05 ; move to next point
G1 X-17,53 Y14,32 E0.05 ; move to next point
G1 X-16,95 Y13,93 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-16,95 Y13,93 E0.05 ; move to next point
G1 X-16,95 Y13,93 E0.05 ; move to next point
G1 X-16,95 Y13,93 E0.05 ; move to next point
G1 X-16,43 Y13,47 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-16,43 Y13,47 E0.05 ; move to next point
G1 X-16,43 Y13,47 E0.05 ; move to next point
G1 X-15,99 Y12,93 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,99 Y12,93 E0.05 ; move to next point
G1 X-15,99 Y12,93 E0.05 ; move to next point
G1 X-15,99 Y12,93 E0.05 ; move to next point
G1 X-15,62 Y12,34 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,62 Y12,34 E0.05 ; move to next point
G1 X-15,62 Y12,34 E0.05 ; move to next point
G1 X-15,62 Y12,34 E0.05 ; move to next point
G1 X-15,33 Y11,7 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,33 Y11,7 E0.05 ; move to next point
G1 X-15,33 Y11,7 E0.05 ; move to next point
G1 X-15,14 Y11,03 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,14 Y11,03 E0.05 ; move to next point
G1 X-15,14 Y11,03 E0.05 ; move to next point
G1 X-15,14 Y11,03 E0.05 ; move to next point
G1 X-15,04 Y10,34 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,04 Y10,34 E0.05 ; move to next point
G1 X-15,04 Y10,34 E0.05 ; move to next point
G1 X-15,04 Y10,34 E0.05 ; move to next point
G1 X-15,04 Y9,65 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,04 Y9,65 E0.05 ; move to next point
G1 X-15,04 Y9,65 E0.05 ; move to next point
G1 X-15,14 Y8,95 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,14 Y8,95 E0.05 ; move to next point
G1 X-15,14 Y8,95 E0.05 ; move to next point
G1 X-15,14 Y8,95 E0.05 ; move to next point
G1 X-15,33 Y8,28 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,33 Y8,28 E0.05 ; move to next point
G1 X-15,33 Y8,28 E0.05 ; move to next point
G1 X-15,33 Y8,28 E0.05 ; move to next point
G1 X-15,33 Y8,28 E0.05 ; move to next point
G1 X-15,62 Y7,65 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,62 Y7,65 E0.05 ; move to next point
G1 X-15,62 Y7,65 E0.05 ; move to next point
G1 X-15,62 Y7,65 E0.05 ; move to next point
G1 X-15,99 Y7,06 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,99 Y7,06 E0.05 ; move to next point
G1 X-15,99 Y7,06 E0.05 ; move to next point
G1 X-15,99 Y7,06 E0.05 ; move to next point
G1 X-15,99 Y7,06 E0.05 ; move to next point
G1 X-16,43 Y6,52 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-16,43 Y6,52 E0.05 ; move to next point
G1 X-16,43 Y6,52 E0.05 ; move to next point
G1 X-16,43 Y6,52 E0.05 ; move to next point
G1 X-16,95 Y6,05 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-16,95 Y6,05 E0.05 ; move to next point
G1 X-16,95 Y6,05 E0.05 ; move to next point
G1 X-17,53 Y5,66 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-17,53 Y5,66 E0.05 ; move to next point
G1 X-17,53 Y5,66 E0.05 ; move to next point
G1 X-17,53 Y5,66 E0.05 ; move to next point
G1 X-18,16 Y5,36 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-18,16 Y5,36 E0.05 ; move to next point
G1 X-18,16 Y5,36 E0.05 ; move to next point
G1 X-18,16 Y5,36 E0.05 ; move to next point
G1 X-18,82 Y5,14 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-18,82 Y5,14 E0.05 ; move to next point
G1 X-18,82 Y5,14 E0.05 ; move to next point
G1 X-19,51 Y5,02 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-19,51 Y5,02 E0.05 ; move to next point
G1 X-19,51 Y5,02 E0.05 ; move to next point
G1 X-19,51 Y5,02 E0.05 ; move to next point
G1 X-20,21 Y5 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-20,21 Y5 E0.05 ; move to next point
G1 X-20,21 Y5 E0.05 ; move to next point
G1 X-20,21 Y5 E0.05 ; move to next point
G1 X-20,9 Y5,07 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-20,9 Y5,07 E0.05 ; move to next point
G1 X-20,9 Y5,07 E0.05 ; move to next point
G1 X-21,58 Y5,24 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-21,58 Y5,24 E0.05 ; move to next point
G1 X-21,58 Y5,24 E0.05 ; move to next point
G1 X-21,58 Y5,24 E0.05 ; move to next point
G1 X-22,22 Y5,5 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-22,22 Y5,5 E0.05 ; move to next point
G1 X-22,22 Y5,5 E0.05 ; move to next point
G1 X-22,83 Y5,85 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-22,83 Y5,85 E0.05 ; move to next point
G1 X-22,83 Y5,85 E0.05 ; move to next point
G1 X-23,38 Y6,28 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-23,38 Y6,28 E0.05 ; move to next point
G1 X-23,38 Y6,28 E0.05 ; move to next point
G1 X-23,38 Y6,28 E0.05 ; move to next point
G1 X-23,86 Y6,78 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-23,86 Y6,78 E0.05 ; move to next point
G1 X-23,86 Y6,78 E0.05 ; move to next point
G1 X-24,27 Y7,34 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-24,27 Y7,34 E0.05 ; move to next point
G1 X-24,27 Y7,34 E0.05 ; move to next point
G1 X-24,6 Y7,96 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X15,16 Y11,37 E0.05 ; move to next point
G1 X15,16 Y11,37 E0.05 ; move to next point
G1 X15,16 Y11,37 E0.05 ; move to next point
G1 X15,4 Y12,03 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X15,02 Y10,69 E0.05 ; move to next point
G1 X15,02 Y10,69 E0.05 ; move to next point
G1 X14,97 Y9,99 E0.05 ; move to next point
G1 X14,97 Y9,99 E0.05 ; move to next point
G1 X14,97 Y9,99 E0.05 ; move to next point
G1 X15,16 Y11,37 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X15,4 Y12,03 E0.05 ; move to next point
G1 X15,4 Y12,03 E0.05 ; move to next point
G1 X15,4 Y12,03 E0.05 ; move to next point
G1 X15,73 Y12,64 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X15,73 Y12,64 E0.05 ; move to next point
G1 X15,73 Y12,64 E0.05 ; move to next point
G1 X16,14 Y13,21 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X16,14 Y13,21 E0.05 ; move to next point
G1 X16,14 Y13,21 E0.05 ; move to next point
G1 X16,14 Y13,21 E0.05 ; move to next point
G1 X16,62 Y13,71 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X16,62 Y13,71 E0.05 ; move to next point
G1 X16,62 Y13,71 E0.05 ; move to next point
G1 X17,17 Y14,14 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X17,17 Y14,14 E0.05 ; move to next point
G1 X17,17 Y14,14 E0.05 ; move to next point
G1 X17,17 Y14,14 E0.05 ; move to next point
G1 X17,78 Y14,49 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X17,78 Y14,49 E0.05 ; move to next point
G1 X17,78 Y14,49 E0.05 ; move to next point
G1 X18,42 Y14,75 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X18,42 Y14,75 E0.05 ; move to next point
G1 X18,42 Y14,75 E0.05 ; move to next point
G1 X18,42 Y14,75 E0.05 ; move to next point
G1 X19,1 Y14,92 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X19,1 Y14,92 E0.05 ; move to next point
G1 X19,1 Y14,92 E0.05 ; move to next point
G1 X19,79 Y14,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X19,79 Y14,99 E0.05 ; move to next point
G1 X19,79 Y14,99 E0.05 ; move to next point
G1 X20,49 Y14,97 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X20,49 Y14,97 E0.05 ; move to next point
G1 X20,49 Y14,97 E0.05 ; move to next point
G1 X21,18 Y14,85 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X21,18 Y14,85 E0.05 ; move to next point
G1 X21,18 Y14,85 E0.05 ; move to next point
G1 X21,18 Y14,85 E0.05 ; move to next point
G1 X21,84 Y14,63 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X21,84 Y14,63 E0.05 ; move to next point
G1 X21,84 Y14,63 E0.05 ; move to next point
G1 X22,47 Y14,32 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X22,47 Y14,32 E0.05 ; move to next point
G1 X22,47 Y14,32 E0.05 ; move to next point
G1 X23,05 Y13,93 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X23,05 Y13,93 E0.05 ; move to next point
G1 X23,05 Y13,93 E0.05 ; move to next point
G1 X23,57 Y13,47 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X23,57 Y13,47 E0.05 ; move to next point
G1 X23,57 Y13,47 E0.05 ; move to next point
G1 X23,57 Y13,47 E0.05 ; move to next point
G1 X24,01 Y12,93 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,01 Y12,93 E0.05 ; move to next point
G1 X24,01 Y12,93 E0.05 ; move to next point
G1 X24,38 Y12,34 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,38 Y12,34 E0.05 ; move to next point
G1 X24,38 Y12,34 E0.05 ; move to next point
G1 X24,67 Y11,7 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,67 Y11,7 E0.05 ; move to next point
G1 X24,67 Y11,7 E0.05 ; move to next point
G1 X24,86 Y11,03 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,86 Y11,03 E0.05 ; move to next point
G1 X24,86 Y11,03 E0.05 ; move to next point
G1 X24,96 Y10,34 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,96 Y10,34 E0.05 ; move to next point
G1 X24,96 Y10,34 E0.05 ; move to next point
G1 X24,96 Y9,65 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,96 Y9,65 E0.05 ; move to next point
G1 X24,96 Y9,65 E0.05 ; move to next point
G1 X24,96 Y9,65 E0.05 ; move to next point
G1 X24,86 Y8,95 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,86 Y8,95 E0.05 ; move to next point
G1 X24,86 Y8,95 E0.05 ; move to next point
G1 X24,67 Y8,28 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,67 Y8,28 E0.05 ; move to next point
G1 X24,67 Y8,28 E0.05 ; move to next point
G1 X24,38 Y7,65 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,38 Y7,65 E0.05 ; move to next point
G1 X24,38 Y7,65 E0.05 ; move to next point
G1 X24,01 Y7,06 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X24,01 Y7,06 E0.05 ; move to next point
G1 X24,01 Y7,06 E0.05 ; move to next point
G1 X24,01 Y7,06 E0.05 ; move to next point
G1 X23,57 Y6,52 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X23,57 Y6,52 E0.05 ; move to next point
G1 X23,57 Y6,52 E0.05 ; move to next point
G1 X23,05 Y6,05 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X23,05 Y6,05 E0.05 ; move to next point
G1 X23,05 Y6,05 E0.05 ; move to next point
G1 X22,47 Y5,66 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X22,47 Y5,66 E0.05 ; move to next point
G1 X22,47 Y5,66 E0.05 ; move to next point
G1 X22,47 Y5,66 E0.05 ; move to next point
G1 X21,84 Y5,36 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X21,84 Y5,36 E0.05 ; move to next point
G1 X21,84 Y5,36 E0.05 ; move to next point
G1 X21,18 Y5,14 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X21,18 Y5,14 E0.05 ; move to next point
G1 X21,18 Y5,14 E0.05 ; move to next point
G1 X21,18 Y5,14 E0.05 ; move to next point
G1 X20,49 Y5,02 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X20,49 Y5,02 E0.05 ; move to next point
G1 X20,49 Y5,02 E0.05 ; move to next point
G1 X19,79 Y5 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X19,79 Y5 E0.05 ; move to next point
G1 X19,79 Y5 E0.05 ; move to next point
G1 X19,79 Y5 E0.05 ; move to next point
G1 X19,1 Y5,07 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X19,1 Y5,07 E0.05 ; move to next point
G1 X19,1 Y5,07 E0.05 ; move to next point
G1 X19,1 Y5,07 E0.05 ; move to next point
G1 X18,42 Y5,24 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X18,42 Y5,24 E0.05 ; move to next point
G1 X18,42 Y5,24 E0.05 ; move to next point
G1 X17,78 Y5,5 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X17,78 Y5,5 E0.05 ; move to next point
G1 X17,78 Y5,5 E0.05 ; move to next point
G1 X17,78 Y5,5 E0.05 ; move to next point
G1 X17,17 Y5,85 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X17,17 Y5,85 E0.05 ; move to next point
G1 X17,17 Y5,85 E0.05 ; move to next point
G1 X17,17 Y5,85 E0.05 ; move to next point
G1 X16,62 Y6,28 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X16,62 Y6,28 E0.05 ; move to next point
G1 X16,62 Y6,28 E0.05 ; move to next point
G1 X16,62 Y6,28 E0.05 ; move to next point
G1 X16,14 Y6,78 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X16,14 Y6,78 E0.05 ; move to next point
G1 X16,14 Y6,78 E0.05 ; move to next point
G1 X15,73 Y7,34 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X15,73 Y7,34 E0.05 ; move to next point
G1 X15,73 Y7,34 E0.05 ; move to next point
G1 X15,73 Y7,34 E0.05 ; move to next point
G1 X15,73 Y7,34 E0.05 ; move to next point
G1 X15,4 Y7,96 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X15,4 Y7,96 E0.05 ; move to next point
G1 X15,4 Y7,96 E0.05 ; move to next point
G1 X15,4 Y7,96 E0.05 ; move to next point
G1 X15,4 Y7,96 E0.05 ; move to next point
G1 X15,16 Y8,62 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X15,16 Y8,62 E0.05 ; move to next point
G1 X15,16 Y8,62 E0.05 ; move to next point
G1 X15,16 Y8,62 E0.05 ; move to next point
G1 X15,02 Y9,3 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X15,02 Y9,3 E0.05 ; move to next point
G1 X15,02 Y9,3 E0.05 ; move to next point
G1 X15,02 Y9,3 E0.05 ; move to next point
G1 X14,97 Y9,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-23,86 Y-6,79 E0.05 ; move to next point
G1 X-23,86 Y-6,79 E0.05 ; move to next point
G1 X-23,38 Y-6,29 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-24,27 Y-7,36 E0.05 ; move to next point
G1 X-24,27 Y-7,36 E0.05 ; move to next point
G1 X-23,86 Y-6,79 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-24,6 Y-7,97 E0.05 ; move to next point
G1 X-24,6 Y-7,97 E0.05 ; move to next point
G1 X-24,6 Y-7,97 E0.05 ; move to next point
G1 X-24,27 Y-7,36 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-24,84 Y-8,63 E0.05 ; move to next point
G1 X-24,84 Y-8,63 E0.05 ; move to next point
G1 X-24,6 Y-7,97 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-24,98 Y-9,31 E0.05 ; move to next point
G1 X-24,98 Y-9,31 E0.05 ; move to next point
G1 X-25,03 Y-10,01 E0.05 ; move to next point
G1 X-25,03 Y-10,01 E0.05 ; move to next point
G1 X-24,98 Y-10,7 E0.05 ; move to next point
G1 X-24,98 Y-10,7 E0.05 ; move to next point
G1 X-24,84 Y-11,38 E0.05 ; move to next point
G1 X-24,84 Y-11,38 E0.05 ; move to next point
G1 X-24,6 Y-12,04 E0.05 ; move to next point
G1 X-24,6 Y-12,04 E0.05 ; move to next point
G1 X-24,6 Y-12,04 E0.05 ; move to next point
G1 X-24,84 Y-8,63 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-23,38 Y-6,29 E0.05 ; move to next point
G1 X-23,38 Y-6,29 E0.05 ; move to next point
G1 X-23,38 Y-6,29 E0.05 ; move to next point
G1 X-22,83 Y-5,86 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-22,83 Y-5,86 E0.05 ; move to next point
G1 X-22,83 Y-5,86 E0.05 ; move to next point
G1 X-22,22 Y-5,51 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-22,22 Y-5,51 E0.05 ; move to next point
G1 X-22,22 Y-5,51 E0.05 ; move to next point
G1 X-22,22 Y-5,51 E0.05 ; move to next point
G1 X-21,58 Y-5,25 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-21,58 Y-5,25 E0.05 ; move to next point
G1 X-21,58 Y-5,25 E0.05 ; move to next point
G1 X-20,9 Y-5,08 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-20,9 Y-5,08 E0.05 ; move to next point
G1 X-20,9 Y-5,08 E0.05 ; move to next point
G1 X-20,9 Y-5,08 E0.05 ; move to next point
G1 X-20,21 Y-5,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-20,21 Y-5,01 E0.05 ; move to next point
G1 X-20,21 Y-5,01 E0.05 ; move to next point
G1 X-19,51 Y-5,03 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-19,51 Y-5,03 E0.05 ; move to next point
G1 X-19,51 Y-5,03 E0.05 ; move to next point
G1 X-19,51 Y-5,03 E0.05 ; move to next point
G1 X-18,82 Y-5,15 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-18,82 Y-5,15 E0.05 ; move to next point
G1 X-18,82 Y-5,15 E0.05 ; move to next point
G1 X-18,82 Y-5,15 E0.05 ; move to next point
G1 X-18,16 Y-5,37 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-18,16 Y-5,37 E0.05 ; move to next point
G1 X-18,16 Y-5,37 E0.05 ; move to next point
G1 X-17,53 Y-5,68 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-17,53 Y-5,68 E0.05 ; move to next point
G1 X-17,53 Y-5,68 E0.05 ; move to next point
G1 X-17,53 Y-5,68 E0.05 ; move to next point
G1 X-16,95 Y-6,07 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-16,95 Y-6,07 E0.05 ; move to next point
G1 X-16,95 Y-6,07 E0.05 ; move to next point
G1 X-16,95 Y-6,07 E0.05 ; move to next point
G1 X-16,43 Y-6,53 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-16,43 Y-6,53 E0.05 ; move to next point
G1 X-16,43 Y-6,53 E0.05 ; move to next point
G1 X-15,99 Y-7,07 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,99 Y-7,07 E0.05 ; move to next point
G1 X-15,99 Y-7,07 E0.05 ; move to next point
G1 X-15,99 Y-7,07 E0.05 ; move to next point
G1 X-15,99 Y-7,07 E0.05 ; move to next point
G1 X-15,62 Y-7,66 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,62 Y-7,66 E0.05 ; move to next point
G1 X-15,62 Y-7,66 E0.05 ; move to next point
G1 X-15,62 Y-7,66 E0.05 ; move to next point
G1 X-15,33 Y-8,3 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,33 Y-8,3 E0.05 ; move to next point
G1 X-15,33 Y-8,3 E0.05 ; move to next point
G1 X-15,33 Y-8,3 E0.05 ; move to next point
G1 X-15,33 Y-8,3 E0.05 ; move to next point
G1 X-15,14 Y-8,97 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,14 Y-8,97 E0.05 ; move to next point
G1 X-15,14 Y-8,97 E0.05 ; move to next point
G1 X-15,14 Y-8,97 E0.05 ; move to next point
G1 X-15,04 Y-9,66 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,04 Y-9,66 E0.05 ; move to next point
G1 X-15,04 Y-9,66 E0.05 ; move to next point
G1 X-15,04 Y-9,66 E0.05 ; move to next point
G1 X-15,04 Y-10,35 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,04 Y-10,35 E0.05 ; move to next point
G1 X-15,04 Y-10,35 E0.05 ; move to next point
G1 X-15,14 Y-11,05 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,14 Y-11,05 E0.05 ; move to next point
G1 X-15,14 Y-11,05 E0.05 ; move to next point
G1 X-15,14 Y-11,05 E0.05 ; move to next point
G1 X-15,33 Y-11,72 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,33 Y-11,72 E0.05 ; move to next point
G1 X-15,33 Y-11,72 E0.05 ; move to next point
G1 X-15,33 Y-11,72 E0.05 ; move to next point
G1 X-15,62 Y-12,35 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,62 Y-12,35 E0.05 ; move to next point
G1 X-15,62 Y-12,35 E0.05 ; move to next point
G1 X-15,99 Y-12,94 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-15,99 Y-12,94 E0.05 ; move to next point
G1 X-15,99 Y-12,94 E0.05 ; move to next point
G1 X-15,99 Y-12,94 E0.05 ; move to next point
G1 X-16,43 Y-13,48 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-16,43 Y-13,48 E0.05 ; move to next point
G1 X-16,43 Y-13,48 E0.05 ; move to next point
G1 X-16,43 Y-13,48 E0.05 ; move to next point
G1 X-16,95 Y-13,95 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-16,95 Y-13,95 E0.05 ; move to next point
G1 X-16,95 Y-13,95 E0.05 ; move to next point
G1 X-17,53 Y-14,34 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-17,53 Y-14,34 E0.05 ; move to next point
G1 X-17,53 Y-14,34 E0.05 ; move to next point
G1 X-18,16 Y-14,64 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-18,16 Y-14,64 E0.05 ; move to next point
G1 X-18,16 Y-14,64 E0.05 ; move to next point
G1 X-18,16 Y-14,64 E0.05 ; move to next point
G1 X-18,82 Y-14,86 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-18,82 Y-14,86 E0.05 ; move to next point
G1 X-18,82 Y-14,86 E0.05 ; move to next point
G1 X-19,51 Y-14,98 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-19,51 Y-14,98 E0.05 ; move to next point
G1 X-19,51 Y-14,98 E0.05 ; move to next point
G1 X-20,21 Y-15 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-20,21 Y-15 E0.05 ; move to next point
G1 X-20,21 Y-15 E0.05 ; move to next point
G1 X-20,21 Y-15 E0.05 ; move to next point
G1 X-20,9 Y-14,93 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-20,9 Y-14,93 E0.05 ; move to next point
G1 X-20,9 Y-14,93 E0.05 ; move to next point
G1 X-21,58 Y-14,76 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-21,58 Y-14,76 E0.05 ; move to next point
G1 X-21,58 Y-14,76 E0.05 ; move to next point
G1 X-22,22 Y-14,5 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-22,22 Y-14,5 E0.05 ; move to next point
G1 X-22,22 Y-14,5 E0.05 ; move to next point
G1 X-22,22 Y-14,5 E0.05 ; move to next point
G1 X-22,83 Y-14,15 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-22,83 Y-14,15 E0.05 ; move to next point
G1 X-22,83 Y-14,15 E0.05 ; move to next point
G1 X-23,38 Y-13,72 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-23,38 Y-13,72 E0.05 ; move to next point
G1 X-23,38 Y-13,72 E0.05 ; move to next point
G1 X-23,86 Y-13,22 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-23,86 Y-13,22 E0.05 ; move to next point
G1 X-23,86 Y-13,22 E0.05 ; move to next point
G1 X-24,27 Y-12,66 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-24,27 Y-12,66 E0.05 ; move to next point
G1 X-24,27 Y-12,66 E0.05 ; move to next point
G1 X-24,6 Y-12,04 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-35,03 Y24,99 E0.05 ; move to next point
G1 X-35,03 Y24,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-36,21 Y24,95 E0.05 ; move to next point
G1 X-36,21 Y24,95 E0.05 ; move to next point
G1 X-35,03 Y24,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-37,38 Y24,81 E0.05 ; move to next point
G1 X-37,38 Y24,81 E0.05 ; move to next point
G1 X-36,21 Y24,95 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-29,44 Y24,99 E0.05 ; move to next point
G1 X-29,44 Y24,99 E0.05 ; move to next point
G1 X-29,44 Y24,99 E0.05 ; move to next point
G1 X-29,44 Y24,99 E0.05 ; move to next point
G1 X29,38 Y24,99 E0.05 ; move to next point
G1 X29,38 Y24,99 E0.05 ; move to next point
G1 X-35,03 Y24,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-38,53 Y24,58 E0.05 ; move to next point
G1 X-38,53 Y24,58 E0.05 ; move to next point
G1 X-37,38 Y24,81 E0.05 ; move to next point
G1 X-39,67 Y24,26 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-50,03 Y4,4 E0.05 ; move to next point
G1 X-50,03 Y4,4 E0.05 ; move to next point
G1 X-50,03 Y9,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-35,03 Y-25,01 E0.05 ; move to next point
G1 X-35,03 Y-25,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-36,21 Y-24,96 E0.05 ; move to next point
G1 X-36,21 Y-24,96 E0.05 ; move to next point
G1 X-35,03 Y-25,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-37,38 Y-24,82 E0.05 ; move to next point
G1 X-37,38 Y-24,82 E0.05 ; move to next point
G1 X-36,21 Y-24,96 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-38,53 Y-24,59 E0.05 ; move to next point
G1 X-38,53 Y-24,59 E0.05 ; move to next point
G1 X-37,38 Y-24,82 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-39,67 Y-24,27 E0.05 ; move to next point
G1 X-39,67 Y-24,27 E0.05 ; move to next point
G1 X-38,53 Y-24,59 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-40,77 Y-23,86 E0.05 ; move to next point
G1 X-40,77 Y-23,86 E0.05 ; move to next point
G1 X-39,67 Y-24,27 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-41,84 Y-23,37 E0.05 ; move to next point
G1 X-41,84 Y-23,37 E0.05 ; move to next point
G1 X-40,77 Y-23,86 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-42,87 Y-22,8 E0.05 ; move to next point
G1 X-42,87 Y-22,8 E0.05 ; move to next point
G1 X-41,84 Y-23,37 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-43,85 Y-22,14 E0.05 ; move to next point
G1 X-43,85 Y-22,14 E0.05 ; move to next point
G1 X-42,87 Y-22,8 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-44,77 Y-21,41 E0.05 ; move to next point
G1 X-44,77 Y-21,41 E0.05 ; move to next point
G1 X-43,85 Y-22,14 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-45,64 Y-20,61 E0.05 ; move to next point
G1 X-45,64 Y-20,61 E0.05 ; move to next point
G1 X-44,77 Y-21,41 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-46,44 Y-19,75 E0.05 ; move to next point
G1 X-46,44 Y-19,75 E0.05 ; move to next point
G1 X-45,64 Y-20,61 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-47,17 Y-18,82 E0.05 ; move to next point
G1 X-47,17 Y-18,82 E0.05 ; move to next point
G1 X-46,44 Y-19,75 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-47,82 Y-17,84 E0.05 ; move to next point
G1 X-47,82 Y-17,84 E0.05 ; move to next point
G1 X-47,17 Y-18,82 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-49,99 Y-11,18 E0.05 ; move to next point
G1 X-49,99 Y-11,18 E0.05 ; move to next point
G1 X-50,03 Y-10,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-49,85 Y-12,35 E0.05 ; move to next point
G1 X-49,85 Y-12,35 E0.05 ; move to next point
G1 X-49,99 Y-11,18 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-49,62 Y-13,51 E0.05 ; move to next point
G1 X-49,62 Y-13,51 E0.05 ; move to next point
G1 X-49,85 Y-12,35 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-49,3 Y-14,64 E0.05 ; move to next point
G1 X-49,3 Y-14,64 E0.05 ; move to next point
G1 X-49,62 Y-13,51 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-48,89 Y-15,75 E0.05 ; move to next point
G1 X-48,89 Y-15,75 E0.05 ; move to next point
G1 X-49,3 Y-14,64 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-50,03 Y-4,42 E0.05 ; move to next point
G1 X-50,03 Y-4,42 E0.05 ; move to next point
G1 X-50,03 Y4,4 E0.05 ; move to next point
G1 X-50,03 Y4,4 E0.05 ; move to next point
G1 X-50,03 Y-10,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-48,4 Y-16,82 E0.05 ; move to next point
G1 X-48,4 Y-16,82 E0.05 ; move to next point
G1 X-48,89 Y-15,75 E0.05 ; move to next point
G1 X-47,82 Y-17,84 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-29,44 Y-25,01 E0.05 ; move to next point
G1 X-29,44 Y-25,01 E0.05 ; move to next point
G1 X-35,03 Y-25,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X49,97 Y-10,01 E0.05 ; move to next point
G1 X49,97 Y-10,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X49,92 Y-11,18 E0.05 ; move to next point
G1 X49,92 Y-11,18 E0.05 ; move to next point
G1 X49,97 Y-10,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X49,78 Y-12,35 E0.05 ; move to next point
G1 X49,78 Y-12,35 E0.05 ; move to next point
G1 X49,92 Y-11,18 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X49,55 Y-13,51 E0.05 ; move to next point
G1 X49,55 Y-13,51 E0.05 ; move to next point
G1 X49,78 Y-12,35 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X49,23 Y-14,64 E0.05 ; move to next point
G1 X49,23 Y-14,64 E0.05 ; move to next point
G1 X49,55 Y-13,51 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X48,83 Y-15,75 E0.05 ; move to next point
G1 X48,83 Y-15,75 E0.05 ; move to next point
G1 X49,23 Y-14,64 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X48,33 Y-16,82 E0.05 ; move to next point
G1 X48,33 Y-16,82 E0.05 ; move to next point
G1 X48,83 Y-15,75 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X47,76 Y-17,84 E0.05 ; move to next point
G1 X47,76 Y-17,84 E0.05 ; move to next point
G1 X48,33 Y-16,82 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X47,1 Y-18,82 E0.05 ; move to next point
G1 X47,1 Y-18,82 E0.05 ; move to next point
G1 X47,76 Y-17,84 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X46,37 Y-19,75 E0.05 ; move to next point
G1 X46,37 Y-19,75 E0.05 ; move to next point
G1 X47,1 Y-18,82 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X45,58 Y-20,61 E0.05 ; move to next point
G1 X45,58 Y-20,61 E0.05 ; move to next point
G1 X46,37 Y-19,75 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X44,71 Y-21,41 E0.05 ; move to next point
G1 X44,71 Y-21,41 E0.05 ; move to next point
G1 X45,58 Y-20,61 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X43,79 Y-22,14 E0.05 ; move to next point
G1 X43,79 Y-22,14 E0.05 ; move to next point
G1 X44,71 Y-21,41 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X42,81 Y-22,8 E0.05 ; move to next point
G1 X43,79 Y-22,14 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X41,78 Y-23,37 E0.05 ; move to next point
G1 X41,78 Y-23,37 E0.05 ; move to next point
G1 X42,81 Y-22,8 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X34,97 Y-25,01 E0.05 ; move to next point
G1 X34,97 Y-25,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X36,15 Y-24,96 E0.05 ; move to next point
G1 X36,15 Y-24,96 E0.05 ; move to next point
G1 X34,97 Y-25,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X37,32 Y-24,82 E0.05 ; move to next point
G1 X37,32 Y-24,82 E0.05 ; move to next point
G1 X36,15 Y-24,96 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X38,47 Y-24,59 E0.05 ; move to next point
G1 X38,47 Y-24,59 E0.05 ; move to next point
G1 X37,32 Y-24,82 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X39,6 Y-24,27 E0.05 ; move to next point
G1 X39,6 Y-24,27 E0.05 ; move to next point
G1 X38,47 Y-24,59 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X29,38 Y-25,01 E0.05 ; move to next point
G1 X29,38 Y-25,01 E0.05 ; move to next point
G1 X29,38 Y-25,01 E0.05 ; move to next point
G1 X29,38 Y-25,01 E0.05 ; move to next point
G1 X-29,44 Y-25,01 E0.05 ; move to next point
G1 X-29,44 Y-25,01 E0.05 ; move to next point
G1 X34,97 Y-25,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X40,71 Y-23,86 E0.05 ; move to next point
G1 X40,71 Y-23,86 E0.05 ; move to next point
G1 X39,6 Y-24,27 E0.05 ; move to next point
G1 X41,78 Y-23,37 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X49,97 Y4,4 E0.05 ; move to next point
G1 X49,97 Y4,4 E0.05 ; move to next point
G1 X49,97 Y-4,42 E0.05 ; move to next point
G1 X49,97 Y-4,42 E0.05 ; move to next point
G1 X49,97 Y9,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X49,97 Y-4,42 E0.05 ; move to next point
G1 X49,97 Y-4,42 E0.05 ; move to next point
G1 X49,97 Y-10,01 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X36,27 Y-2,62 E0.05 ; move to next point
G1 X36,27 Y-2,62 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X37,12 Y-2,82 E0.05 ; move to next point
G1 X36,27 Y-2,62 E0.05 ; move to next point
G1 X36,27 Y-2,62 E0.05 ; move to next point
G1 X36,27 Y-2,62 E0.05 ; move to next point
G1 X35,4 Y-2,52 E0.05 ; move to next point
G1 X35,4 Y-2,52 E0.05 ; move to next point
G1 X34,53 Y-2,52 E0.05 ; move to next point
G1 X34,53 Y-2,52 E0.05 ; move to next point
G1 X34,53 Y-2,52 E0.05 ; move to next point
G1 X33,67 Y-2,62 E0.05 ; move to next point
G1 X33,67 Y-2,62 E0.05 ; move to next point
G1 X32,82 Y-2,82 E0.05 ; move to next point
G1 X32,82 Y-2,82 E0.05 ; move to next point
G1 X32,82 Y-2,82 E0.05 ; move to next point
G1 X32 Y-3,12 E0.05 ; move to next point
G1 X32 Y-3,12 E0.05 ; move to next point
G1 X31,22 Y-3,51 E0.05 ; move to next point
G1 X31,22 Y-3,51 E0.05 ; move to next point
G1 X31,22 Y-3,51 E0.05 ; move to next point
G1 X30,49 Y-3,99 E0.05 ; move to next point
G1 X30,49 Y-3,99 E0.05 ; move to next point
G1 X29,82 Y-4,55 E0.05 ; move to next point
G1 X29,82 Y-4,55 E0.05 ; move to next point
G1 X29,82 Y-4,55 E0.05 ; move to next point
G1 X29,22 Y-5,18 E0.05 ; move to next point
G1 X29,22 Y-5,18 E0.05 ; move to next point
G1 X28,7 Y-5,88 E0.05 ; move to next point
G1 X28,7 Y-5,88 E0.05 ; move to next point
G1 X28,7 Y-5,88 E0.05 ; move to next point
G1 X28,27 Y-6,64 E0.05 ; move to next point
G1 X28,27 Y-6,64 E0.05 ; move to next point
G1 X27,92 Y-7,44 E0.05 ; move to next point
G1 X27,92 Y-7,44 E0.05 ; move to next point
G1 X27,92 Y-7,44 E0.05 ; move to next point
G1 X27,67 Y-8,28 E0.05 ; move to next point
G1 X27,67 Y-8,28 E0.05 ; move to next point
G1 X27,52 Y-9,14 E0.05 ; move to next point
G1 X27,52 Y-9,14 E0.05 ; move to next point
G1 X27,52 Y-9,14 E0.05 ; move to next point
G1 X27,47 Y-10,01 E0.05 ; move to next point
G1 X27,47 Y-10,01 E0.05 ; move to next point
G1 X27,52 Y-10,88 E0.05 ; move to next point
G1 X27,52 Y-10,88 E0.05 ; move to next point
G1 X27,52 Y-10,88 E0.05 ; move to next point
G1 X27,67 Y-11,74 E0.05 ; move to next point
G1 X27,67 Y-11,74 E0.05 ; move to next point
G1 X27,92 Y-12,57 E0.05 ; move to next point
G1 X27,92 Y-12,57 E0.05 ; move to next point
G1 X27,92 Y-12,57 E0.05 ; move to next point
G1 X28,27 Y-13,37 E0.05 ; move to next point
G1 X28,27 Y-13,37 E0.05 ; move to next point
G1 X28,7 Y-14,13 E0.05 ; move to next point
G1 X28,7 Y-14,13 E0.05 ; move to next point
G1 X28,7 Y-14,13 E0.05 ; move to next point
G1 X29,22 Y-14,83 E0.05 ; move to next point
G1 X29,22 Y-14,83 E0.05 ; move to next point
G1 X29,22 Y-14,83 E0.05 ; move to next point
G1 X29,82 Y-15,46 E0.05 ; move to next point
G1 X29,82 Y-15,46 E0.05 ; move to next point
G1 X30,49 Y-16,02 E0.05 ; move to next point
G1 X30,49 Y-16,02 E0.05 ; move to next point
G1 X31,22 Y-16,5 E0.05 ; move to next point
G1 X31,22 Y-16,5 E0.05 ; move to next point
G1 X31,22 Y-16,5 E0.05 ; move to next point
G1 X32 Y-16,89 E0.05 ; move to next point
G1 X32 Y-16,89 E0.05 ; move to next point
G1 X32,82 Y-17,19 E0.05 ; move to next point
G1 X32,82 Y-17,19 E0.05 ; move to next point
G1 X33,67 Y-17,39 E0.05 ; move to next point
G1 X33,67 Y-17,39 E0.05 ; move to next point
G1 X34,53 Y-17,49 E0.05 ; move to next point
G1 X34,53 Y-17,49 E0.05 ; move to next point
G1 X35,4 Y-17,49 E0.05 ; move to next point
G1 X35,4 Y-17,49 E0.05 ; move to next point
G1 X36,27 Y-17,39 E0.05 ; move to next point
G1 X36,27 Y-17,39 E0.05 ; move to next point
G1 X37,12 Y-17,19 E0.05 ; move to next point
G1 X37,12 Y-17,19 E0.05 ; move to next point
G1 X37,94 Y-16,89 E0.05 ; move to next point
G1 X37,94 Y-16,89 E0.05 ; move to next point
G1 X38,72 Y-16,5 E0.05 ; move to next point
G1 X38,72 Y-16,5 E0.05 ; move to next point
G1 X39,45 Y-16,02 E0.05 ; move to next point
G1 X39,45 Y-16,02 E0.05 ; move to next point
G1 X40,12 Y-15,46 E0.05 ; move to next point
G1 X40,12 Y-15,46 E0.05 ; move to next point
G1 X40,71 Y-14,83 E0.05 ; move to next point
G1 X40,71 Y-14,83 E0.05 ; move to next point
G1 X41,23 Y-14,13 E0.05 ; move to next point
G1 X41,23 Y-14,13 E0.05 ; move to next point
G1 X41,67 Y-13,37 E0.05 ; move to next point
G1 X41,67 Y-13,37 E0.05 ; move to next point
G1 X42,02 Y-12,57 E0.05 ; move to next point
G1 X42,02 Y-12,57 E0.05 ; move to next point
G1 X42,27 Y-11,74 E0.05 ; move to next point
G1 X42,27 Y-11,74 E0.05 ; move to next point
G1 X42,42 Y-10,88 E0.05 ; move to next point
G1 X42,42 Y-10,88 E0.05 ; move to next point
G1 X42,47 Y-10,01 E0.05 ; move to next point
G1 X42,47 Y-10,01 E0.05 ; move to next point
G1 X42,47 Y-10,01 E0.05 ; move to next point
G1 X42,42 Y-9,14 E0.05 ; move to next point
G1 X42,42 Y-9,14 E0.05 ; move to next point
G1 X42,27 Y-8,28 E0.05 ; move to next point
G1 X42,27 Y-8,28 E0.05 ; move to next point
G1 X42,02 Y-7,44 E0.05 ; move to next point
G1 X42,02 Y-7,44 E0.05 ; move to next point
G1 X41,67 Y-6,64 E0.05 ; move to next point
G1 X41,67 Y-6,64 E0.05 ; move to next point
G1 X41,23 Y-5,88 E0.05 ; move to next point
G1 X41,23 Y-5,88 E0.05 ; move to next point
G1 X40,71 Y-5,18 E0.05 ; move to next point
G1 X40,71 Y-5,18 E0.05 ; move to next point
G1 X40,12 Y-4,55 E0.05 ; move to next point
G1 X40,12 Y-4,55 E0.05 ; move to next point
G1 X39,45 Y-3,99 E0.05 ; move to next point
G1 X39,45 Y-3,99 E0.05 ; move to next point
G1 X39,45 Y-3,99 E0.05 ; move to next point
G1 X38,72 Y-3,51 E0.05 ; move to next point
G1 X38,72 Y-3,51 E0.05 ; move to next point
G1 X38,72 Y-3,51 E0.05 ; move to next point
G1 X37,94 Y-3,12 E0.05 ; move to next point
G1 X37,94 Y-3,12 E0.05 ; move to next point
G1 X37,94 Y-3,12 E0.05 ; move to next point
G1 X37,12 Y-2,82 E0.05 ; move to next point
G1 X37,12 Y-2,82 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-39,67 Y24,26 E0.05 ; move to next point
G1 X-39,67 Y24,26 E0.05 ; move to next point
G1 X-40,77 Y23,85 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-40,77 Y23,85 E0.05 ; move to next point
G1 X-40,77 Y23,85 E0.05 ; move to next point
G1 X-41,84 Y23,36 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-41,84 Y23,36 E0.05 ; move to next point
G1 X-41,84 Y23,36 E0.05 ; move to next point
G1 X-42,87 Y22,78 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-42,87 Y22,78 E0.05 ; move to next point
G1 X-42,87 Y22,78 E0.05 ; move to next point
G1 X-43,85 Y22,13 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-43,85 Y22,13 E0.05 ; move to next point
G1 X-43,85 Y22,13 E0.05 ; move to next point
G1 X-44,77 Y21,4 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-44,77 Y21,4 E0.05 ; move to next point
G1 X-44,77 Y21,4 E0.05 ; move to next point
G1 X-45,64 Y20,6 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-45,64 Y20,6 E0.05 ; move to next point
G1 X-45,64 Y20,6 E0.05 ; move to next point
G1 X-46,44 Y19,74 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-46,44 Y19,74 E0.05 ; move to next point
G1 X-46,44 Y19,74 E0.05 ; move to next point
G1 X-47,17 Y18,81 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-47,17 Y18,81 E0.05 ; move to next point
G1 X-47,17 Y18,81 E0.05 ; move to next point
G1 X-47,82 Y17,83 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-47,82 Y17,83 E0.05 ; move to next point
G1 X-47,82 Y17,83 E0.05 ; move to next point
G1 X-48,4 Y16,8 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-48,4 Y16,8 E0.05 ; move to next point
G1 X-48,4 Y16,8 E0.05 ; move to next point
G1 X-48,89 Y15,73 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-48,89 Y15,73 E0.05 ; move to next point
G1 X-48,89 Y15,73 E0.05 ; move to next point
G1 X-49,3 Y14,63 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-49,3 Y14,63 E0.05 ; move to next point
G1 X-49,3 Y14,63 E0.05 ; move to next point
G1 X-49,62 Y13,5 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-49,62 Y13,5 E0.05 ; move to next point
G1 X-49,62 Y13,5 E0.05 ; move to next point
G1 X-49,85 Y12,34 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-49,85 Y12,34 E0.05 ; move to next point
G1 X-49,85 Y12,34 E0.05 ; move to next point
G1 X-49,99 Y11,17 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-49,99 Y11,17 E0.05 ; move to next point
G1 X-49,99 Y11,17 E0.05 ; move to next point
G1 X-50,03 Y9,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X29,38 Y24,99 E0.05 ; move to next point
G1 X29,38 Y24,99 E0.05 ; move to next point
G1 X34,97 Y24,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X49,23 Y14,63 E0.05 ; move to next point
G1 X49,23 Y14,63 E0.05 ; move to next point
G1 X49,55 Y13,5 E0.05 ; move to next point
G1 X48,83 Y15,73 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X49,55 Y13,5 E0.05 ; move to next point
G1 X49,55 Y13,5 E0.05 ; move to next point
G1 X49,78 Y12,34 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X49,78 Y12,34 E0.05 ; move to next point
G1 X49,78 Y12,34 E0.05 ; move to next point
G1 X49,92 Y11,17 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X49,92 Y11,17 E0.05 ; move to next point
G1 X49,92 Y11,17 E0.05 ; move to next point
G1 X49,97 Y9,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X49,97 Y9,99 E0.05 ; move to next point
G1 X49,97 Y9,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X48,83 Y15,73 E0.05 ; move to next point
G1 X48,83 Y15,73 E0.05 ; move to next point
G1 X48,33 Y16,8 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X48,33 Y16,8 E0.05 ; move to next point
G1 X48,33 Y16,8 E0.05 ; move to next point
G1 X47,76 Y17,83 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X47,76 Y17,83 E0.05 ; move to next point
G1 X47,76 Y17,83 E0.05 ; move to next point
G1 X47,1 Y18,81 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X47,1 Y18,81 E0.05 ; move to next point
G1 X47,1 Y18,81 E0.05 ; move to next point
G1 X46,37 Y19,74 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X46,37 Y19,74 E0.05 ; move to next point
G1 X46,37 Y19,74 E0.05 ; move to next point
G1 X45,58 Y20,6 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X45,58 Y20,6 E0.05 ; move to next point
G1 X45,58 Y20,6 E0.05 ; move to next point
G1 X44,71 Y21,4 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X44,71 Y21,4 E0.05 ; move to next point
G1 X44,71 Y21,4 E0.05 ; move to next point
G1 X43,79 Y22,13 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X43,79 Y22,13 E0.05 ; move to next point
G1 X43,79 Y22,13 E0.05 ; move to next point
G1 X42,81 Y22,78 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X42,81 Y22,78 E0.05 ; move to next point
G1 X41,78 Y23,36 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X41,78 Y23,36 E0.05 ; move to next point
G1 X41,78 Y23,36 E0.05 ; move to next point
G1 X40,71 Y23,85 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X40,71 Y23,85 E0.05 ; move to next point
G1 X40,71 Y23,85 E0.05 ; move to next point
G1 X39,6 Y24,26 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X39,6 Y24,26 E0.05 ; move to next point
G1 X39,6 Y24,26 E0.05 ; move to next point
G1 X38,47 Y24,58 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X38,47 Y24,58 E0.05 ; move to next point
G1 X38,47 Y24,58 E0.05 ; move to next point
G1 X37,32 Y24,81 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X37,32 Y24,81 E0.05 ; move to next point
G1 X37,32 Y24,81 E0.05 ; move to next point
G1 X36,15 Y24,95 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X36,15 Y24,95 E0.05 ; move to next point
G1 X36,15 Y24,95 E0.05 ; move to next point
G1 X34,97 Y24,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X34,97 Y24,99 E0.05 ; move to next point
G1 X34,97 Y24,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-2,83 Y4,14 E0.05 ; move to next point
G1 X-2,83 Y4,14 E0.05 ; move to next point
G1 X-2,22 Y4,49 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-2,22 Y4,49 E0.05 ; move to next point
G1 X-2,22 Y4,49 E0.05 ; move to next point
G1 X-1,58 Y4,75 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-1,58 Y4,75 E0.05 ; move to next point
G1 X-1,58 Y4,75 E0.05 ; move to next point
G1 X-0,9 Y4,92 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-0,9 Y4,92 E0.05 ; move to next point
G1 X-0,9 Y4,92 E0.05 ; move to next point
G1 X-0,21 Y4,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-0,21 Y4,99 E0.05 ; move to next point
G1 X-0,21 Y4,99 E0.05 ; move to next point
G1 X0,49 Y4,97 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X0,49 Y4,97 E0.05 ; move to next point
G1 X0,49 Y4,97 E0.05 ; move to next point
G1 X1,18 Y4,85 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X1,18 Y4,85 E0.05 ; move to next point
G1 X1,18 Y4,85 E0.05 ; move to next point
G1 X1,84 Y4,63 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X1,84 Y4,63 E0.05 ; move to next point
G1 X1,84 Y4,63 E0.05 ; move to next point
G1 X2,47 Y4,32 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X2,47 Y4,32 E0.05 ; move to next point
G1 X2,47 Y4,32 E0.05 ; move to next point
G1 X3,05 Y3,93 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X3,05 Y3,93 E0.05 ; move to next point
G1 X3,05 Y3,93 E0.05 ; move to next point
G1 X3,57 Y3,47 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X3,57 Y3,47 E0.05 ; move to next point
G1 X3,57 Y3,47 E0.05 ; move to next point
G1 X4,01 Y2,93 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X4,01 Y2,93 E0.05 ; move to next point
G1 X4,01 Y2,93 E0.05 ; move to next point
G1 X4,38 Y2,34 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X4,38 Y2,34 E0.05 ; move to next point
G1 X4,38 Y2,34 E0.05 ; move to next point
G1 X4,67 Y1,7 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X4,67 Y1,7 E0.05 ; move to next point
G1 X4,67 Y1,7 E0.05 ; move to next point
G1 X4,86 Y1,03 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X4,86 Y1,03 E0.05 ; move to next point
G1 X4,86 Y1,03 E0.05 ; move to next point
G1 X4,96 Y0,34 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X4,96 Y0,34 E0.05 ; move to next point
G1 X4,96 Y0,34 E0.05 ; move to next point
G1 X4,96 Y-0,35 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X4,96 Y-0,35 E0.05 ; move to next point
G1 X4,96 Y-0,35 E0.05 ; move to next point
G1 X4,86 Y-1,05 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X4,86 Y-1,05 E0.05 ; move to next point
G1 X4,86 Y-1,05 E0.05 ; move to next point
G1 X4,67 Y-1,72 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X4,67 Y-1,72 E0.05 ; move to next point
G1 X4,67 Y-1,72 E0.05 ; move to next point
G1 X4,38 Y-2,35 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X4,38 Y-2,35 E0.05 ; move to next point
G1 X4,38 Y-2,35 E0.05 ; move to next point
G1 X4,01 Y-2,94 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X4,01 Y-2,94 E0.05 ; move to next point
G1 X4,01 Y-2,94 E0.05 ; move to next point
G1 X3,57 Y-3,48 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X3,57 Y-3,48 E0.05 ; move to next point
G1 X3,57 Y-3,48 E0.05 ; move to next point
G1 X3,05 Y-3,95 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X3,05 Y-3,95 E0.05 ; move to next point
G1 X3,05 Y-3,95 E0.05 ; move to next point
G1 X2,47 Y-4,34 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X2,47 Y-4,34 E0.05 ; move to next point
G1 X2,47 Y-4,34 E0.05 ; move to next point
G1 X1,84 Y-4,64 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X1,84 Y-4,64 E0.05 ; move to next point
G1 X1,84 Y-4,64 E0.05 ; move to next point
G1 X1,18 Y-4,86 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X1,18 Y-4,86 E0.05 ; move to next point
G1 X1,18 Y-4,86 E0.05 ; move to next point
G1 X0,49 Y-4,98 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X0,49 Y-4,98 E0.05 ; move to next point
G1 X0,49 Y-4,98 E0.05 ; move to next point
G1 X-0,21 Y-5 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-0,21 Y-5 E0.05 ; move to next point
G1 X-0,21 Y-5 E0.05 ; move to next point
G1 X-0,9 Y-4,93 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-0,9 Y-4,93 E0.05 ; move to next point
G1 X-0,9 Y-4,93 E0.05 ; move to next point
G1 X-1,58 Y-4,76 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-1,58 Y-4,76 E0.05 ; move to next point
G1 X-1,58 Y-4,76 E0.05 ; move to next point
G1 X-2,22 Y-4,5 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-2,22 Y-4,5 E0.05 ; move to next point
G1 X-2,22 Y-4,5 E0.05 ; move to next point
G1 X-2,83 Y-4,15 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-2,83 Y-4,15 E0.05 ; move to next point
G1 X-2,83 Y-4,15 E0.05 ; move to next point
G1 X-3,38 Y-3,72 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-3,38 Y-3,72 E0.05 ; move to next point
G1 X-3,38 Y-3,72 E0.05 ; move to next point
G1 X-3,86 Y-3,22 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-3,86 Y-3,22 E0.05 ; move to next point
G1 X-3,86 Y-3,22 E0.05 ; move to next point
G1 X-4,27 Y-2,66 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-4,27 Y-2,66 E0.05 ; move to next point
G1 X-4,27 Y-2,66 E0.05 ; move to next point
G1 X-4,6 Y-2,04 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-4,6 Y-2,04 E0.05 ; move to next point
G1 X-4,6 Y-2,04 E0.05 ; move to next point
G1 X-4,84 Y-1,38 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-4,84 Y-1,38 E0.05 ; move to next point
G1 X-4,84 Y-1,38 E0.05 ; move to next point
G1 X-4,98 Y-0,7 E0.05 ; move to next point
G1 X-4,98 Y-0,7 E0.05 ; move to next point
G1 X-4,98 Y-0,7 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X29,82 Y15,45 E0.05 ; move to next point
G1 X29,22 Y14,82 E0.05 ; move to next point
G1 X29,22 Y14,82 E0.05 ; move to next point
G1 X29,22 Y14,82 E0.05 ; move to next point
G1 X28,7 Y14,12 E0.05 ; move to next point
G1 X28,7 Y14,12 E0.05 ; move to next point
G1 X28,7 Y14,12 E0.05 ; move to next point
G1 X28,27 Y13,36 E0.05 ; move to next point
G1 X28,27 Y13,36 E0.05 ; move to next point
G1 X27,92 Y12,56 E0.05 ; move to next point
G1 X27,92 Y12,56 E0.05 ; move to next point
G1 X27,92 Y12,56 E0.05 ; move to next point
G1 X27,67 Y11,72 E0.05 ; move to next point
G1 X27,67 Y11,72 E0.05 ; move to next point
G1 X27,52 Y10,86 E0.05 ; move to next point
G1 X27,52 Y10,86 E0.05 ; move to next point
G1 X27,52 Y10,86 E0.05 ; move to next point
G1 X27,47 Y9,99 E0.05 ; move to next point
G1 X27,47 Y9,99 E0.05 ; move to next point
G1 X27,52 Y9,12 E0.05 ; move to next point
G1 X27,52 Y9,12 E0.05 ; move to next point
G1 X27,52 Y9,12 E0.05 ; move to next point
G1 X27,67 Y8,26 E0.05 ; move to next point
G1 X27,67 Y8,26 E0.05 ; move to next point
G1 X27,92 Y7,43 E0.05 ; move to next point
G1 X27,92 Y7,43 E0.05 ; move to next point
G1 X27,92 Y7,43 E0.05 ; move to next point
G1 X28,27 Y6,63 E0.05 ; move to next point
G1 X28,27 Y6,63 E0.05 ; move to next point
G1 X28,7 Y5,87 E0.05 ; move to next point
G1 X28,7 Y5,87 E0.05 ; move to next point
G1 X28,7 Y5,87 E0.05 ; move to next point
G1 X29,22 Y5,17 E0.05 ; move to next point
G1 X29,22 Y5,17 E0.05 ; move to next point
G1 X29,82 Y4,54 E0.05 ; move to next point
G1 X29,82 Y4,54 E0.05 ; move to next point
G1 X30,49 Y3,98 E0.05 ; move to next point
G1 X30,49 Y3,98 E0.05 ; move to next point
G1 X30,49 Y3,98 E0.05 ; move to next point
G1 X31,22 Y3,5 E0.05 ; move to next point
G1 X31,22 Y3,5 E0.05 ; move to next point
G1 X31,22 Y3,5 E0.05 ; move to next point
G1 X32 Y3,11 E0.05 ; move to next point
G1 X32 Y3,11 E0.05 ; move to next point
G1 X32,82 Y2,81 E0.05 ; move to next point
G1 X32,82 Y2,81 E0.05 ; move to next point
G1 X32,82 Y2,81 E0.05 ; move to next point
G1 X33,67 Y2,61 E0.05 ; move to next point
G1 X33,67 Y2,61 E0.05 ; move to next point
G1 X34,53 Y2,51 E0.05 ; move to next point
G1 X34,53 Y2,51 E0.05 ; move to next point
G1 X35,4 Y2,51 E0.05 ; move to next point
G1 X35,4 Y2,51 E0.05 ; move to next point
G1 X35,4 Y2,51 E0.05 ; move to next point
G1 X36,27 Y2,61 E0.05 ; move to next point
G1 X36,27 Y2,61 E0.05 ; move to next point
G1 X36,27 Y2,61 E0.05 ; move to next point
G1 X36,27 Y2,61 E0.05 ; move to next point
G1 X37,12 Y2,81 E0.05 ; move to next point
G1 X37,12 Y2,81 E0.05 ; move to next point
G1 X37,94 Y3,11 E0.05 ; move to next point
G1 X37,94 Y3,11 E0.05 ; move to next point
G1 X37,94 Y3,11 E0.05 ; move to next point
G1 X38,72 Y3,5 E0.05 ; move to next point
G1 X38,72 Y3,5 E0.05 ; move to next point
G1 X38,72 Y3,5 E0.05 ; move to next point
G1 X39,45 Y3,98 E0.05 ; move to next point
G1 X39,45 Y3,98 E0.05 ; move to next point
G1 X39,45 Y3,98 E0.05 ; move to next point
G1 X40,12 Y4,54 E0.05 ; move to next point
G1 X40,12 Y4,54 E0.05 ; move to next point
G1 X40,71 Y5,17 E0.05 ; move to next point
G1 X40,71 Y5,17 E0.05 ; move to next point
G1 X41,23 Y5,87 E0.05 ; move to next point
G1 X41,23 Y5,87 E0.05 ; move to next point
G1 X41,67 Y6,63 E0.05 ; move to next point
G1 X41,67 Y6,63 E0.05 ; move to next point
G1 X42,02 Y7,43 E0.05 ; move to next point
G1 X42,02 Y7,43 E0.05 ; move to next point
G1 X42,27 Y8,26 E0.05 ; move to next point
G1 X42,27 Y8,26 E0.05 ; move to next point
G1 X42,42 Y9,12 E0.05 ; move to next point
G1 X42,42 Y9,12 E0.05 ; move to next point
G1 X42,47 Y9,99 E0.05 ; move to next point
G1 X42,47 Y9,99 E0.05 ; move to next point
G1 X42,47 Y9,99 E0.05 ; move to next point
G1 X42,42 Y10,86 E0.05 ; move to next point
G1 X42,42 Y10,86 E0.05 ; move to next point
G1 X42,27 Y11,72 E0.05 ; move to next point
G1 X42,27 Y11,72 E0.05 ; move to next point
G1 X42,02 Y12,56 E0.05 ; move to next point
G1 X42,02 Y12,56 E0.05 ; move to next point
G1 X41,67 Y13,36 E0.05 ; move to next point
G1 X41,67 Y13,36 E0.05 ; move to next point
G1 X41,23 Y14,12 E0.05 ; move to next point
G1 X41,23 Y14,12 E0.05 ; move to next point
G1 X40,71 Y14,82 E0.05 ; move to next point
G1 X40,71 Y14,82 E0.05 ; move to next point
G1 X40,12 Y15,45 E0.05 ; move to next point
G1 X40,12 Y15,45 E0.05 ; move to next point
G1 X39,45 Y16,01 E0.05 ; move to next point
G1 X39,45 Y16,01 E0.05 ; move to next point
G1 X38,72 Y16,49 E0.05 ; move to next point
G1 X38,72 Y16,49 E0.05 ; move to next point
G1 X37,94 Y16,88 E0.05 ; move to next point
G1 X37,94 Y16,88 E0.05 ; move to next point
G1 X37,12 Y17,18 E0.05 ; move to next point
G1 X37,12 Y17,18 E0.05 ; move to next point
G1 X36,27 Y17,38 E0.05 ; move to next point
G1 X36,27 Y17,38 E0.05 ; move to next point
G1 X35,4 Y17,48 E0.05 ; move to next point
G1 X35,4 Y17,48 E0.05 ; move to next point
G1 X34,53 Y17,48 E0.05 ; move to next point
G1 X34,53 Y17,48 E0.05 ; move to next point
G1 X33,67 Y17,38 E0.05 ; move to next point
G1 X33,67 Y17,38 E0.05 ; move to next point
G1 X32,82 Y17,18 E0.05 ; move to next point
G1 X32,82 Y17,18 E0.05 ; move to next point
G1 X32 Y16,88 E0.05 ; move to next point
G1 X32 Y16,88 E0.05 ; move to next point
G1 X31,22 Y16,49 E0.05 ; move to next point
G1 X31,22 Y16,49 E0.05 ; move to next point
G1 X31,22 Y16,49 E0.05 ; move to next point
G1 X30,49 Y16,01 E0.05 ; move to next point
G1 X30,49 Y16,01 E0.05 ; move to next point
G1 X29,82 Y15,45 E0.05 ; move to next point
G1 X29,82 Y15,45 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-3,38 Y3,71 E0.05 ; move to next point
G1 X-3,38 Y3,71 E0.05 ; move to next point
G1 X-2,83 Y4,14 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-3,86 Y3,21 E0.05 ; move to next point
G1 X-3,86 Y3,21 E0.05 ; move to next point
G1 X-3,38 Y3,71 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-4,27 Y2,64 E0.05 ; move to next point
G1 X-4,27 Y2,64 E0.05 ; move to next point
G1 X-3,86 Y3,21 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-4,6 Y2,03 E0.05 ; move to next point
G1 X-4,6 Y2,03 E0.05 ; move to next point
G1 X-4,27 Y2,64 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-4,84 Y1,37 E0.05 ; move to next point
G1 X-4,84 Y1,37 E0.05 ; move to next point
G1 X-4,6 Y2,03 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-5,03 Y-0,01 E0.05 ; move to next point
G1 X-5,03 Y-0,01 E0.05 ; move to next point
G1 X-4,98 Y-0,7 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-4,98 Y0,69 E0.05 ; move to next point
G1 X-5,03 Y-0,01 E0.05 ; move to next point
G1 X-4,84 Y1,37 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-9,98 Y-1 E0.05 ; move to next point
G1 X-9,98 Y-1 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-9,83 Y-1,99 E0.05 ; move to next point
G1 X-9,98 Y-1 E0.05 ; move to next point
G1 X-10,03 Y-0,01 E0.05 ; move to next point
G1 X-10,03 Y-0,01 E0.05 ; move to next point
G1 X-9,98 Y0,99 E0.05 ; move to next point
G1 X-9,98 Y0,99 E0.05 ; move to next point
G1 X-9,83 Y1,98 E0.05 ; move to next point
G1 X-9,83 Y1,98 E0.05 ; move to next point
G1 X-9,59 Y2,94 E0.05 ; move to next point
G1 X-9,59 Y2,94 E0.05 ; move to next point
G1 X-9,25 Y3,88 E0.05 ; move to next point
G1 X-9,25 Y3,88 E0.05 ; move to next point
G1 X-8,81 Y4,78 E0.05 ; move to next point
G1 X-8,81 Y4,78 E0.05 ; move to next point
G1 X-8,29 Y5,63 E0.05 ; move to next point
G1 X-8,29 Y5,63 E0.05 ; move to next point
G1 X-7,69 Y6,42 E0.05 ; move to next point
G1 X-7,69 Y6,42 E0.05 ; move to next point
G1 X-7,01 Y7,15 E0.05 ; move to next point
G1 X-7,01 Y7,15 E0.05 ; move to next point
G1 X-6,27 Y7,81 E0.05 ; move to next point
G1 X-6,27 Y7,81 E0.05 ; move to next point
G1 X-5,46 Y8,39 E0.05 ; move to next point
G1 X-5,46 Y8,39 E0.05 ; move to next point
G1 X-4,59 Y8,89 E0.05 ; move to next point
G1 X-4,59 Y8,89 E0.05 ; move to next point
G1 X-3,68 Y9,3 E0.05 ; move to next point
G1 X-3,68 Y9,3 E0.05 ; move to next point
G1 X-2,74 Y9,62 E0.05 ; move to next point
G1 X-2,74 Y9,62 E0.05 ; move to next point
G1 X-1,77 Y9,84 E0.05 ; move to next point
G1 X-1,77 Y9,84 E0.05 ; move to next point
G1 X-0,78 Y9,97 E0.05 ; move to next point
G1 X-0,78 Y9,97 E0.05 ; move to next point
G1 X0,22 Y9,99 E0.05 ; move to next point
G1 X0,22 Y9,99 E0.05 ; move to next point
G1 X1,21 Y9,92 E0.05 ; move to next point
G1 X1,21 Y9,92 E0.05 ; move to next point
G1 X2,19 Y9,74 E0.05 ; move to next point
G1 X2,19 Y9,74 E0.05 ; move to next point
G1 X3,15 Y9,47 E0.05 ; move to next point
G1 X3,15 Y9,47 E0.05 ; move to next point
G1 X4,08 Y9,11 E0.05 ; move to next point
G1 X4,08 Y9,11 E0.05 ; move to next point
G1 X4,97 Y8,65 E0.05 ; move to next point
G1 X4,97 Y8,65 E0.05 ; move to next point
G1 X5,81 Y8,11 E0.05 ; move to next point
G1 X5,81 Y8,11 E0.05 ; move to next point
G1 X6,59 Y7,49 E0.05 ; move to next point
G1 X6,59 Y7,49 E0.05 ; move to next point
G1 X7,3 Y6,8 E0.05 ; move to next point
G1 X7,3 Y6,8 E0.05 ; move to next point
G1 X7,94 Y6,03 E0.05 ; move to next point
G1 X7,94 Y6,03 E0.05 ; move to next point
G1 X8,5 Y5,21 E0.05 ; move to next point
G1 X8,5 Y5,21 E0.05 ; move to next point
G1 X8,98 Y4,33 E0.05 ; move to next point
G1 X8,98 Y4,33 E0.05 ; move to next point
G1 X9,37 Y3,41 E0.05 ; move to next point
G1 X9,37 Y3,41 E0.05 ; move to next point
G1 X9,66 Y2,46 E0.05 ; move to next point
G1 X9,66 Y2,46 E0.05 ; move to next point
G1 X9,86 Y1,48 E0.05 ; move to next point
G1 X9,86 Y1,48 E0.05 ; move to next point
G1 X9,96 Y0,49 E0.05 ; move to next point
G1 X9,96 Y0,49 E0.05 ; move to next point
G1 X9,96 Y-0,5 E0.05 ; move to next point
G1 X9,96 Y-0,5 E0.05 ; move to next point
G1 X9,86 Y-1,5 E0.05 ; move to next point
G1 X9,86 Y-1,5 E0.05 ; move to next point
G1 X9,66 Y-2,47 E0.05 ; move to next point
G1 X9,66 Y-2,47 E0.05 ; move to next point
G1 X9,37 Y-3,43 E0.05 ; move to next point
G1 X9,37 Y-3,43 E0.05 ; move to next point
G1 X8,98 Y-4,34 E0.05 ; move to next point
G1 X8,98 Y-4,34 E0.05 ; move to next point
G1 X8,5 Y-5,22 E0.05 ; move to next point
G1 X8,5 Y-5,22 E0.05 ; move to next point
G1 X7,94 Y-6,04 E0.05 ; move to next point
G1 X7,94 Y-6,04 E0.05 ; move to next point
G1 X7,3 Y-6,81 E0.05 ; move to next point
G1 X7,3 Y-6,81 E0.05 ; move to next point
G1 X6,59 Y-7,5 E0.05 ; move to next point
G1 X6,59 Y-7,5 E0.05 ; move to next point
G1 X5,81 Y-8,13 E0.05 ; move to next point
G1 X5,81 Y-8,13 E0.05 ; move to next point
G1 X4,97 Y-8,67 E0.05 ; move to next point
G1 X4,97 Y-8,67 E0.05 ; move to next point
G1 X4,08 Y-9,12 E0.05 ; move to next point
G1 X4,08 Y-9,12 E0.05 ; move to next point
G1 X3,15 Y-9,49 E0.05 ; move to next point
G1 X3,15 Y-9,49 E0.05 ; move to next point
G1 X2,19 Y-9,76 E0.05 ; move to next point
G1 X2,19 Y-9,76 E0.05 ; move to next point
G1 X1,21 Y-9,93 E0.05 ; move to next point
G1 X1,21 Y-9,93 E0.05 ; move to next point
G1 X0,22 Y-10 E0.05 ; move to next point
G1 X0,22 Y-10 E0.05 ; move to next point
G1 X-0,78 Y-9,98 E0.05 ; move to next point
G1 X-0,78 Y-9,98 E0.05 ; move to next point
G1 X-1,77 Y-9,85 E0.05 ; move to next point
G1 X-1,77 Y-9,85 E0.05 ; move to next point
G1 X-2,74 Y-9,63 E0.05 ; move to next point
G1 X-2,74 Y-9,63 E0.05 ; move to next point
G1 X-3,68 Y-9,31 E0.05 ; move to next point
G1 X-3,68 Y-9,31 E0.05 ; move to next point
G1 X-4,59 Y-8,9 E0.05 ; move to next point
G1 X-4,59 Y-8,9 E0.05 ; move to next point
G1 X-5,46 Y-8,41 E0.05 ; move to next point
G1 X-5,46 Y-8,41 E0.05 ; move to next point
G1 X-6,27 Y-7,82 E0.05 ; move to next point
G1 X-6,27 Y-7,82 E0.05 ; move to next point
G1 X-7,01 Y-7,16 E0.05 ; move to next point
G1 X-7,01 Y-7,16 E0.05 ; move to next point
G1 X-7,69 Y-6,43 E0.05 ; move to next point
G1 X-7,69 Y-6,43 E0.05 ; move to next point
G1 X-8,29 Y-5,64 E0.05 ; move to next point
G1 X-8,29 Y-5,64 E0.05 ; move to next point
G1 X-8,81 Y-4,79 E0.05 ; move to next point
G1 X-8,81 Y-4,79 E0.05 ; move to next point
G1 X-9,25 Y-3,89 E0.05 ; move to next point
G1 X-9,25 Y-3,89 E0.05 ; move to next point
G1 X-9,59 Y-2,95 E0.05 ; move to next point
G1 X-9,59 Y-2,95 E0.05 ; move to next point
G1 X-9,83 Y-1,99 E0.05 ; move to next point
G1 X-9,83 Y-1,99 E0.05 ; move to next point
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


