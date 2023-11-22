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


G1 F1200 X8,49 Y-0,47; move to layer start point
G1 X8,52 Y-0,32 E0.05 ; move to next point
G1 X8,52 Y-0,15 E0.05 ; move to next point
G1 X8,53 Y-0 E0.05 ; move to next point
G1 X8,52 Y0,17 E0.05 ; move to next point
G1 X8,52 Y0,32 E0.05 ; move to next point
G1 X8,49 Y0,48 E0.05 ; move to next point
G1 X8,46 Y0,63 E0.05 ; move to next point
G1 X8,42 Y0,79 E0.05 ; move to next point
G1 X8,38 Y0,94 E0.05 ; move to next point
G1 X8,32 Y1,1 E0.05 ; move to next point
G1 X8,26 Y1,24 E0.05 ; move to next point
G1 X8,19 Y1,39 E0.05 ; move to next point
G1 X8,12 Y1,52 E0.05 ; move to next point
G1 X8,02 Y1,66 E0.05 ; move to next point
G1 X7,94 Y1,79 E0.05 ; move to next point
G1 X7,83 Y1,92 E0.05 ; move to next point
G1 X7,74 Y2,03 E0.05 ; move to next point
G1 X7,62 Y2,15 E0.05 ; move to next point
G1 X7,51 Y2,26 E0.05 ; move to next point
G1 X7,38 Y2,36 E0.05 ; move to next point
G1 X7,26 Y2,45 E0.05 ; move to next point
G1 X7,12 Y2,54 E0.05 ; move to next point
G1 X6,99 Y2,62 E0.05 ; move to next point
G1 X6,84 Y2,7 E0.05 ; move to next point
G1 X6,7 Y2,76 E0.05 ; move to next point
G1 X6,54 Y2,82 E0.05 ; move to next point
G1 X6,4 Y2,87 E0.05 ; move to next point
G1 X6,24 Y2,91 E0.05 ; move to next point
G1 X6,09 Y2,95 E0.05 ; move to next point
G1 X5,92 Y2,97 E0.05 ; move to next point
G1 X5,77 Y2,99 E0.05 ; move to next point
G1 X5,61 Y2,99 E0.05 ; move to next point
G1 X5,45 Y3 E0.05 ; move to next point
G1 X5,29 Y2,99 E0.05 ; move to next point
G1 X5,13 Y2,97 E0.05 ; move to next point
G1 X4,97 Y2,94 E0.05 ; move to next point
G1 X4,82 Y2,91 E0.05 ; move to next point
G1 X4,66 Y2,87 E0.05 ; move to next point
G1 X4,51 Y2,82 E0.05 ; move to next point
G1 X4,36 Y2,76 E0.05 ; move to next point
G1 X4,22 Y2,7 E0.05 ; move to next point
G1 X4,07 Y2,62 E0.05 ; move to next point
G1 X3,94 Y2,54 E0.05 ; move to next point
G1 X3,8 Y2,45 E0.05 ; move to next point
G1 X3,68 Y2,36 E0.05 ; move to next point
G1 X3,55 Y2,25 E0.05 ; move to next point
G1 X3,44 Y2,15 E0.05 ; move to next point
G1 X3,33 Y2,03 E0.05 ; move to next point
G1 X3,22 Y1,91 E0.05 ; move to next point
G1 X3,12 Y1,78 E0.05 ; move to next point
G1 X3,03 Y1,66 E0.05 ; move to next point
G1 X2,95 Y1,52 E0.05 ; move to next point
G1 X2,87 Y1,38 E0.05 ; move to next point
G1 X2,8 Y1,23 E0.05 ; move to next point
G1 X2,74 Y1,09 E0.05 ; move to next point
G1 X2,69 Y0,93 E0.05 ; move to next point
G1 X2,64 Y0,79 E0.05 ; move to next point
G1 X2,6 Y0,63 E0.05 ; move to next point
G1 X2,57 Y0,48 E0.05 ; move to next point
G1 X2,55 Y0,31 E0.05 ; move to next point
G1 X2,54 Y0,16 E0.05 ; move to next point
G1 X2,54 Y-0,01 E0.05 ; move to next point
G1 X2,54 Y-0,16 E0.05 ; move to next point
G1 X2,55 Y-0,32 E0.05 ; move to next point
G1 X2,57 Y-0,48 E0.05 ; move to next point
G1 X2,61 Y-0,64 E0.05 ; move to next point
G1 X2,64 Y-0,79 E0.05 ; move to next point
G1 X2,69 Y-0,95 E0.05 ; move to next point
G1 X2,74 Y-1,09 E0.05 ; move to next point
G1 X2,81 Y-1,24 E0.05 ; move to next point
G1 X2,87 Y-1,38 E0.05 ; move to next point
G1 X2,95 Y-1,53 E0.05 ; move to next point
G1 X3,03 Y-1,66 E0.05 ; move to next point
G1 X3,13 Y-1,79 E0.05 ; move to next point
G1 X3,22 Y-1,91 E0.05 ; move to next point
G1 X3,34 Y-2,04 E0.05 ; move to next point
G1 X3,44 Y-2,15 E0.05 ; move to next point
G1 X3,56 Y-2,26 E0.05 ; move to next point
G1 X3,68 Y-2,36 E0.05 ; move to next point
G1 X3,82 Y-2,46 E0.05 ; move to next point
G1 X3,94 Y-2,54 E0.05 ; move to next point
G1 X4,09 Y-2,62 E0.05 ; move to next point
G1 X4,22 Y-2,7 E0.05 ; move to next point
G1 X4,37 Y-2,76 E0.05 ; move to next point
G1 X4,51 Y-2,82 E0.05 ; move to next point
G1 X4,67 Y-2,87 E0.05 ; move to next point
G1 X4,82 Y-2,91 E0.05 ; move to next point
G1 X4,98 Y-2,95 E0.05 ; move to next point
G1 X5,13 Y-2,97 E0.05 ; move to next point
G1 X5,3 Y-2,99 E0.05 ; move to next point
G1 X5,45 Y-3 E0.05 ; move to next point
G1 X5,62 Y-2,99 E0.05 ; move to next point
G1 X5,77 Y-2,99 E0.05 ; move to next point
G1 X5,94 Y-2,97 E0.05 ; move to next point
G1 X6,09 Y-2,95 E0.05 ; move to next point
G1 X6,25 Y-2,91 E0.05 ; move to next point
G1 X6,4 Y-2,87 E0.05 ; move to next point
G1 X6,55 Y-2,82 E0.05 ; move to next point
G1 X6,7 Y-2,76 E0.05 ; move to next point
G1 X6,85 Y-2,69 E0.05 ; move to next point
G1 X6,99 Y-2,62 E0.05 ; move to next point
G1 X7,13 Y-2,54 E0.05 ; move to next point
G1 X7,26 Y-2,45 E0.05 ; move to next point
G1 X7,39 Y-2,35 E0.05 ; move to next point
G1 X7,51 Y-2,26 E0.05 ; move to next point
G1 X7,63 Y-2,14 E0.05 ; move to next point
G1 X7,74 Y-2,03 E0.05 ; move to next point
G1 X7,84 Y-1,91 E0.05 ; move to next point
G1 X7,94 Y-1,79 E0.05 ; move to next point
G1 X8,03 Y-1,65 E0.05 ; move to next point
G1 X8,12 Y-1,52 E0.05 ; move to next point
G1 X8,19 Y-1,38 E0.05 ; move to next point
G1 X8,26 Y-1,24 E0.05 ; move to next point
G1 X8,32 Y-1,08 E0.05 ; move to next point
G1 X8,38 Y-0,94 E0.05 ; move to next point
G1 X8,42 Y-0,78 E0.05 ; move to next point
G1 X8,46 Y-0,63 E0.05 ; move to next point
G1 X8,49 Y-0,47 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X5,73 Y-4,99 E0.05 ; move to next point
G1 X5,53 Y-5 E0.05 ; move to next point
G1 X-4,07 Y-5 E0.05 ; move to next point
G1 X-14,47 Y-5 E0.05 ; move to next point
G1 X-14,47 Y-0,2 E0.05 ; move to next point
G1 X-14,47 Y5 E0.05 ; move to next point
G1 X-4,87 Y5 E0.05 ; move to next point
G1 X5,53 Y5 E0.05 ; move to next point
G1 X5,75 Y4,99 E0.05 ; move to next point
G1 X5,94 Y4,98 E0.05 ; move to next point
G1 X6,16 Y4,96 E0.05 ; move to next point
G1 X6,35 Y4,93 E0.05 ; move to next point
G1 X6,57 Y4,89 E0.05 ; move to next point
G1 X6,76 Y4,85 E0.05 ; move to next point
G1 X6,97 Y4,79 E0.05 ; move to next point
G1 X7,16 Y4,73 E0.05 ; move to next point
G1 X7,36 Y4,65 E0.05 ; move to next point
G1 X7,54 Y4,58 E0.05 ; move to next point
G1 X7,73 Y4,48 E0.05 ; move to next point
G1 X7,91 Y4,4 E0.05 ; move to next point
G1 X8,1 Y4,29 E0.05 ; move to next point
G1 X8,27 Y4,19 E0.05 ; move to next point
G1 X8,44 Y4,06 E0.05 ; move to next point
G1 X8,6 Y3,95 E0.05 ; move to next point
G1 X8,77 Y3,81 E0.05 ; move to next point
G1 X8,92 Y3,68 E0.05 ; move to next point
G1 X9,07 Y3,53 E0.05 ; move to next point
G1 X9,21 Y3,39 E0.05 ; move to next point
G1 X9,35 Y3,22 E0.05 ; move to next point
G1 X9,48 Y3,07 E0.05 ; move to next point
G1 X9,6 Y2,9 E0.05 ; move to next point
G1 X9,72 Y2,73 E0.05 ; move to next point
G1 X9,83 Y2,55 E0.05 ; move to next point
G1 X9,93 Y2,38 E0.05 ; move to next point
G1 X10,02 Y2,19 E0.05 ; move to next point
G1 X10,11 Y2,01 E0.05 ; move to next point
G1 X10,19 Y1,81 E0.05 ; move to next point
G1 X10,26 Y1,62 E0.05 ; move to next point
G1 X10,32 Y1,42 E0.05 ; move to next point
G1 X10,38 Y1,23 E0.05 ; move to next point
G1 X10,42 Y1,02 E0.05 ; move to next point
G1 X10,46 Y0,82 E0.05 ; move to next point
G1 X10,49 Y0,61 E0.05 ; move to next point
G1 X10,51 Y0,41 E0.05 ; move to next point
G1 X10,52 Y0,2 E0.05 ; move to next point
G1 X10,53 Y-0 E0.05 ; move to next point
G1 X10,52 Y-0,21 E0.05 ; move to next point
G1 X10,51 Y-0,41 E0.05 ; move to next point
G1 X10,49 Y-0,63 E0.05 ; move to next point
G1 X10,46 Y-0,82 E0.05 ; move to next point
G1 X10,42 Y-1,03 E0.05 ; move to next point
G1 X10,38 Y-1,23 E0.05 ; move to next point
G1 X10,32 Y-1,43 E0.05 ; move to next point
G1 X10,26 Y-1,62 E0.05 ; move to next point
G1 X10,18 Y-1,82 E0.05 ; move to next point
G1 X10,11 Y-2,01 E0.05 ; move to next point
G1 X10,02 Y-2,2 E0.05 ; move to next point
G1 X9,93 Y-2,38 E0.05 ; move to next point
G1 X9,82 Y-2,56 E0.05 ; move to next point
G1 X9,72 Y-2,73 E0.05 ; move to next point
G1 X9,59 Y-2,91 E0.05 ; move to next point
G1 X9,48 Y-3,07 E0.05 ; move to next point
G1 X9,34 Y-3,24 E0.05 ; move to next point
G1 X9,21 Y-3,39 E0.05 ; move to next point
G1 X9,06 Y-3,54 E0.05 ; move to next point
G1 X8,92 Y-3,68 E0.05 ; move to next point
G1 X8,75 Y-3,82 E0.05 ; move to next point
G1 X8,6 Y-3,95 E0.05 ; move to next point
G1 X8,43 Y-4,07 E0.05 ; move to next point
G1 X8,27 Y-4,19 E0.05 ; move to next point
G1 X8,08 Y-4,3 E0.05 ; move to next point
G1 X7,91 Y-4,4 E0.05 ; move to next point
G1 X7,72 Y-4,49 E0.05 ; move to next point
G1 X7,54 Y-4,58 E0.05 ; move to next point
G1 X7,34 Y-4,66 E0.05 ; move to next point
G1 X7,16 Y-4,73 E0.05 ; move to next point
G1 X6,95 Y-4,79 E0.05 ; move to next point
G1 X6,76 Y-4,85 E0.05 ; move to next point
G1 X6,55 Y-4,89 E0.05 ; move to next point
G1 X6,35 Y-4,93 E0.05 ; move to next point
G1 X6,14 Y-4,96 E0.05 ; move to next point
G1 X5,94 Y-4,98 E0.05 ; move to next point
G1 X5,73 Y-4,99 E0.05 ; move to next point
;-----------------------LayerDone-------------------

G1 X-5,51 Y-0,54 E0.05 ; move to next point
G1 X-5,49 Y-0,37 E0.05 ; move to next point
G1 X-5,48 Y-0,18 E0.05 ; move to next point
G1 X-5,47 Y-0 E0.05 ; move to next point
G1 X-5,48 Y0,19 E0.05 ; move to next point
G1 X-5,49 Y0,37 E0.05 ; move to next point
G1 X-5,51 Y0,56 E0.05 ; move to next point
G1 X-5,54 Y0,73 E0.05 ; move to next point
G1 X-5,58 Y0,92 E0.05 ; move to next point
G1 X-5,62 Y1,09 E0.05 ; move to next point
G1 X-5,68 Y1,28 E0.05 ; move to next point
G1 X-5,74 Y1,44 E0.05 ; move to next point
G1 X-5,82 Y1,62 E0.05 ; move to next point
G1 X-5,89 Y1,78 E0.05 ; move to next point
G1 X-5,98 Y1,95 E0.05 ; move to next point
G1 X-6,07 Y2,11 E0.05 ; move to next point
G1 X-6,18 Y2,26 E0.05 ; move to next point
G1 X-6,28 Y2,41 E0.05 ; move to next point
G1 X-6,4 Y2,56 E0.05 ; move to next point
G1 X-6,51 Y2,69 E0.05 ; move to next point
G1 X-6,65 Y2,83 E0.05 ; move to next point
G1 X-6,77 Y2,96 E0.05 ; move to next point
G1 X-6,92 Y3,08 E0.05 ; move to next point
G1 X-7,06 Y3,19 E0.05 ; move to next point
G1 X-7,22 Y3,3 E0.05 ; move to next point
G1 X-7,36 Y3,4 E0.05 ; move to next point
G1 X-7,53 Y3,49 E0.05 ; move to next point
G1 X-7,69 Y3,58 E0.05 ; move to next point
G1 X-7,86 Y3,66 E0.05 ; move to next point
G1 X-8,02 Y3,73 E0.05 ; move to next point
G1 X-8,21 Y3,79 E0.05 ; move to next point
G1 X-8,37 Y3,85 E0.05 ; move to next point
G1 X-8,56 Y3,89 E0.05 ; move to next point
G1 X-8,73 Y3,93 E0.05 ; move to next point
G1 X-8,92 Y3,96 E0.05 ; move to next point
G1 X-9,1 Y3,98 E0.05 ; move to next point
G1 X-9,29 Y3,99 E0.05 ; move to next point
G1 X-9,47 Y4 E0.05 ; move to next point
G1 X-9,66 Y3,99 E0.05 ; move to next point
G1 X-9,84 Y3,98 E0.05 ; move to next point
G1 X-10,03 Y3,96 E0.05 ; move to next point
G1 X-10,2 Y3,93 E0.05 ; move to next point
G1 X-10,39 Y3,89 E0.05 ; move to next point
G1 X-10,56 Y3,85 E0.05 ; move to next point
G1 X-10,74 Y3,79 E0.05 ; move to next point
G1 X-10,91 Y3,73 E0.05 ; move to next point
G1 X-11,09 Y3,65 E0.05 ; move to next point
G1 X-11,25 Y3,58 E0.05 ; move to next point
G1 X-11,42 Y3,49 E0.05 ; move to next point
G1 X-11,57 Y3,4 E0.05 ; move to next point
G1 X-11,73 Y3,29 E0.05 ; move to next point
G1 X-11,88 Y3,19 E0.05 ; move to next point
G1 X-12,03 Y3,07 E0.05 ; move to next point
G1 X-12,16 Y2,96 E0.05 ; move to next point
G1 X-12,3 Y2,82 E0.05 ; move to next point
G1 X-12,42 Y2,69 E0.05 ; move to next point
G1 X-12,55 Y2,55 E0.05 ; move to next point
G1 X-12,66 Y2,41 E0.05 ; move to next point
G1 X-12,77 Y2,25 E0.05 ; move to next point
G1 X-12,87 Y2,11 E0.05 ; move to next point
G1 X-12,96 Y1,94 E0.05 ; move to next point
G1 X-13,05 Y1,78 E0.05 ; move to next point
G1 X-13,13 Y1,61 E0.05 ; move to next point
G1 X-13,2 Y1,44 E0.05 ; move to next point
G1 X-13,26 Y1,26 E0.05 ; move to next point
G1 X-13,32 Y1,09 E0.05 ; move to next point
G1 X-13,36 Y0,91 E0.05 ; move to next point
G1 X-13,4 Y0,73 E0.05 ; move to next point
G1 X-13,43 Y0,54 E0.05 ; move to next point
G1 X-13,45 Y0,37 E0.05 ; move to next point
G1 X-13,46 Y0,18 E0.05 ; move to next point
G1 X-13,47 Y-0 E0.05 ; move to next point
G1 X-13,46 Y-0,19 E0.05 ; move to next point
G1 X-13,45 Y-0,37 E0.05 ; move to next point
G1 X-13,42 Y-0,56 E0.05 ; move to next point
G1 X-13,4 Y-0,73 E0.05 ; move to next point
G1 X-13,36 Y-0,92 E0.05 ; move to next point
G1 X-13,32 Y-1,09 E0.05 ; move to next point
G1 X-13,25 Y-1,28 E0.05 ; move to next point
G1 X-13,2 Y-1,44 E0.05 ; move to next point
G1 X-13,12 Y-1,62 E0.05 ; move to next point
G1 X-13,05 Y-1,78 E0.05 ; move to next point
G1 X-12,96 Y-1,95 E0.05 ; move to next point
G1 X-12,87 Y-2,11 E0.05 ; move to next point
G1 X-12,76 Y-2,26 E0.05 ; move to next point
G1 X-12,66 Y-2,41 E0.05 ; move to next point
G1 X-12,54 Y-2,56 E0.05 ; move to next point
G1 X-12,42 Y-2,69 E0.05 ; move to next point
G1 X-12,29 Y-2,83 E0.05 ; move to next point
G1 X-12,16 Y-2,96 E0.05 ; move to next point
G1 X-12,01 Y-3,08 E0.05 ; move to next point
G1 X-11,88 Y-3,19 E0.05 ; move to next point
G1 X-11,72 Y-3,3 E0.05 ; move to next point
G1 X-11,57 Y-3,4 E0.05 ; move to next point
G1 X-11,41 Y-3,49 E0.05 ; move to next point
G1 X-11,25 Y-3,58 E0.05 ; move to next point
G1 X-11,08 Y-3,66 E0.05 ; move to next point
G1 X-10,91 Y-3,73 E0.05 ; move to next point
G1 X-10,73 Y-3,79 E0.05 ; move to next point
G1 X-10,56 Y-3,85 E0.05 ; move to next point
G1 X-10,38 Y-3,89 E0.05 ; move to next point
G1 X-10,2 Y-3,93 E0.05 ; move to next point
G1 X-10,01 Y-3,96 E0.05 ; move to next point
G1 X-9,84 Y-3,98 E0.05 ; move to next point
G1 X-9,65 Y-3,99 E0.05 ; move to next point
G1 X-9,47 Y-4 E0.05 ; move to next point
G1 X-9,28 Y-3,99 E0.05 ; move to next point
G1 X-9,1 Y-3,98 E0.05 ; move to next point
G1 X-8,91 Y-3,96 E0.05 ; move to next point
G1 X-8,73 Y-3,93 E0.05 ; move to next point
G1 X-8,55 Y-3,89 E0.05 ; move to next point
G1 X-8,37 Y-3,85 E0.05 ; move to next point
G1 X-8,19 Y-3,79 E0.05 ; move to next point
G1 X-8,02 Y-3,73 E0.05 ; move to next point
G1 X-7,85 Y-3,65 E0.05 ; move to next point
G1 X-7,69 Y-3,58 E0.05 ; move to next point
G1 X-7,52 Y-3,49 E0.05 ; move to next point
G1 X-7,36 Y-3,4 E0.05 ; move to next point
G1 X-7,2 Y-3,29 E0.05 ; move to next point
G1 X-7,06 Y-3,19 E0.05 ; move to next point
G1 X-6,91 Y-3,07 E0.05 ; move to next point
G1 X-6,77 Y-2,96 E0.05 ; move to next point
G1 X-6,64 Y-2,82 E0.05 ; move to next point
G1 X-6,51 Y-2,69 E0.05 ; move to next point
G1 X-6,39 Y-2,55 E0.05 ; move to next point
G1 X-6,28 Y-2,41 E0.05 ; move to next point
G1 X-6,17 Y-2,25 E0.05 ; move to next point
G1 X-6,07 Y-2,11 E0.05 ; move to next point
G1 X-5,97 Y-1,94 E0.05 ; move to next point
G1 X-5,89 Y-1,78 E0.05 ; move to next point
G1 X-5,81 Y-1,61 E0.05 ; move to next point
G1 X-5,74 Y-1,44 E0.05 ; move to next point
G1 X-5,68 Y-1,26 E0.05 ; move to next point
G1 X-5,62 Y-1,09 E0.05 ; move to next point
G1 X-5,58 Y-0,91 E0.05 ; move to next point
G1 X-5,54 Y-0,73 E0.05 ; move to next point
G1 X-5,51 Y-0,54 E0.05 ; move to next point
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


