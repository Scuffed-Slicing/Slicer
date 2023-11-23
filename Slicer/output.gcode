M140 S60
M105
M190 S60
M104 S200
M82 ;absolute extrusion mode
M220 S100 ;Reset Feedrate
M221 S100 ;Reset Flowrate
G28 ;Home
G92 E0 ;Reset Extruder
G1 Z2.0 F3000 ;Move Z Axis up
G1 X10.1 Y20 Z0.28 F5000.0 ;Move to start position
M109 S200.000000
G1 X10.1 Y145.0 Z0.28 F1500.0 E15 ;Draw the first line
G1 X10.4 Y145.0 Z0.28 F5000.0 ;Move to side a little
G1 X10.4 Y20 Z0.28 F1500.0 E30 ;Draw the second line
G92 E0  ;Reset Extruder
G1 E-1.0000 F1800 ;Retract a bit
G1 Z0.2 F3000 ;Move Z Axis up
G1 E0.0000 F1800
G92 E0
G92 E0
G92 E0  ;Reset ExtruderG1 X74.8 Y74.8 E1 ; move to next point
G1 X25.2 Y74.8 E2.649702698288695 ; move to next point
G1 X25.2 Y25.2 E4.29940539657739 ; move to next point
G1 X74.8 Y25.2 E5.949108094866085 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X74.4 Y25.599999999999998 E1 ; move to next point
G1 X74.4 Y74.4 E2.6230945902517804 ; move to next point
G1 X25.599999999999998 Y74.4 E4.246189180503561 ; move to next point
G1 X25.599999999999998 Y25.599999999999998 E5.869283770755342 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X74 Y26 E1 ; move to next point
G1 X74 Y74 E2.596486482214866 ; move to next point
G1 X26 Y74 E4.192972964429732 ; move to next point
G1 X26 Y26 E5.789459446644598 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X73.6 Y26.4 E1 ; move to next point
G1 X73.6 Y73.6 E2.5698783741779514 ; move to next point
G1 X26.4 Y73.6 E4.139756748355903 ; move to next point
G1 X26.4 Y26.4 E5.709635122533854 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X38.06 Y73.1 E1 ; move to next point
G1 X31.96 Y73.1 E1.2028868237814725 ; move to next point
G1 X35.01 Y70.05 E1.346349472690752 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X48.07 Y73.1 E1 ; move to next point
G1 X41.97 Y73.1 E1.2028868237814725 ; move to next point
G1 X45.019999999999996 Y70.05 E1.346349472690752 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X58.08 Y73.1 E1 ; move to next point
G1 X51.98 Y73.1 E1.2028868237814725 ; move to next point
G1 X55.03 Y70.05 E1.346349472690752 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X68.09 Y73.1 E1 ; move to next point
G1 X61.99 Y73.1 E1.2028868237814725 ; move to next point
G1 X65.04 Y70.05 E1.346349472690752 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X70.03999999999999 Y65.04 E1 ; move to next point
G1 X65.04 Y70.03999999999999 E1.2351846703430807 ; move to next point
G1 X60.04 Y65.04 E1.4703693406861615 ; move to next point
G1 X65.04 Y60.04 E1.7055540110292424 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X60.03 Y65.04 E1 ; move to next point
G1 X55.03 Y70.03999999999999 E1.2351846703430807 ; move to next point
G1 X50.03 Y65.04 E1.4703693406861615 ; move to next point
G1 X55.03 Y60.04 E1.7055540110292424 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X50.02 Y65.04 E1 ; move to next point
G1 X45.019999999999996 Y70.03999999999999 E1.2351846703430809 ; move to next point
G1 X40.019999999999996 Y65.04 E1.4703693406861618 ; move to next point
G1 X45.019999999999996 Y60.04 E1.7055540110292426 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X40.01 Y65.04 E1 ; move to next point
G1 X35.01 Y70.03999999999999 E1.2351846703430809 ; move to next point
G1 X30.009999999999998 Y65.04 E1.4703693406861618 ; move to next point
G1 X35.01 Y60.04 E1.7055540110292426 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X30 Y65.04 E1 ; move to next point
G1 X26.9 Y68.14 E1.14581449561271 ; move to next point
G1 X26.9 Y61.94 E1.352027332898797 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X73.1 Y68.09 E1 ; move to next point
G1 X70.05 Y65.04 E1.1434626489092792 ; move to next point
G1 X73.1 Y61.99 E1.2869252978185586 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X50.02 Y55.03 E1 ; move to next point
G1 X45.019999999999996 Y60.03 E1.2351846703430809 ; move to next point
G1 X40.019999999999996 Y55.03 E1.4703693406861618 ; move to next point
G1 X45.019999999999996 Y50.03 E1.7055540110292426 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X70.03999999999999 Y55.03 E1 ; move to next point
G1 X65.04 Y60.03 E1.2351846703430807 ; move to next point
G1 X60.04 Y55.03 E1.4703693406861615 ; move to next point
G1 X65.04 Y50.03 E1.7055540110292424 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X60.03 Y55.03 E1 ; move to next point
G1 X55.03 Y60.03 E1.2351846703430809 ; move to next point
G1 X50.03 Y55.03 E1.4703693406861618 ; move to next point
G1 X55.03 Y50.03 E1.7055540110292426 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X40.01 Y55.03 E1 ; move to next point
G1 X35.01 Y60.03 E1.2351846703430809 ; move to next point
G1 X30.009999999999998 Y55.03 E1.4703693406861618 ; move to next point
G1 X35.01 Y50.03 E1.7055540110292426 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X30 Y55.03 E1 ; move to next point
G1 X26.9 Y58.13 E1.14581449561271 ; move to next point
G1 X26.9 Y51.93 E1.352027332898797 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X73.1 Y58.08 E1 ; move to next point
G1 X70.05 Y55.03 E1.1434626489092794 ; move to next point
G1 X73.1 Y51.98 E1.2869252978185588 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X70.03999999999999 Y45.019999999999996 E1 ; move to next point
G1 X65.04 Y50.02 E1.2351846703430809 ; move to next point
G1 X60.04 Y45.019999999999996 E1.4703693406861618 ; move to next point
G1 X65.04 Y40.019999999999996 E1.7055540110292426 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X60.03 Y45.019999999999996 E1 ; move to next point
G1 X55.03 Y50.02 E1.2351846703430809 ; move to next point
G1 X50.03 Y45.019999999999996 E1.4703693406861618 ; move to next point
G1 X55.03 Y40.019999999999996 E1.7055540110292426 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X50.02 Y45.019999999999996 E1 ; move to next point
G1 X45.019999999999996 Y50.02 E1.2351846703430809 ; move to next point
G1 X40.019999999999996 Y45.019999999999996 E1.4703693406861618 ; move to next point
G1 X45.019999999999996 Y40.019999999999996 E1.7055540110292426 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X40.01 Y45.019999999999996 E1 ; move to next point
G1 X35.01 Y50.02 E1.2351846703430809 ; move to next point
G1 X30.009999999999998 Y45.019999999999996 E1.4703693406861618 ; move to next point
G1 X35.01 Y40.019999999999996 E1.7055540110292426 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X30 Y45.019999999999996 E1 ; move to next point
G1 X26.9 Y48.12 E1.14581449561271 ; move to next point
G1 X26.9 Y41.93 E1.3516947315483354 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X73.1 Y48.07 E1 ; move to next point
G1 X70.05 Y45.019999999999996 E1.1434626489092794 ; move to next point
G1 X73.1 Y41.97 E1.2869252978185588 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X40.01 Y35.01 E1 ; move to next point
G1 X35.01 Y40.01 E1.2351846703430809 ; move to next point
G1 X30.009999999999998 Y35.01 E1.4703693406861618 ; move to next point
G1 X35.01 Y30.009999999999998 E1.7055540110292426 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X50.02 Y35.01 E1 ; move to next point
G1 X45.019999999999996 Y40.01 E1.2351846703430809 ; move to next point
G1 X40.019999999999996 Y35.01 E1.4703693406861618 ; move to next point
G1 X45.019999999999996 Y30.009999999999998 E1.7055540110292426 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X60.03 Y35.01 E1 ; move to next point
G1 X55.03 Y40.01 E1.2351846703430809 ; move to next point
G1 X50.03 Y35.01 E1.4703693406861618 ; move to next point
G1 X55.03 Y30.009999999999998 E1.7055540110292426 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X70.03999999999999 Y35.01 E1 ; move to next point
G1 X65.04 Y40.01 E1.2351846703430809 ; move to next point
G1 X60.04 Y35.01 E1.4703693406861618 ; move to next point
G1 X65.04 Y30.009999999999998 E1.7055540110292426 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X30 Y35.01 E1 ; move to next point
G1 X26.9 Y38.11 E1.14581449561271 ; move to next point
G1 X26.9 Y31.91 E1.3520273328987968 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X73.1 Y38.06 E1 ; move to next point
G1 X70.05 Y35.01 E1.1434626489092794 ; move to next point
G1 X73.1 Y31.96 E1.2869252978185588 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X65.04 Y30 E1 ; move to next point
G1 X61.94 Y26.9 E1.14581449561271 ; move to next point
G1 X68.14 Y26.9 E1.352027332898797 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X55.03 Y30 E1 ; move to next point
G1 X51.93 Y26.9 E1.14581449561271 ; move to next point
G1 X58.13 Y26.9 E1.352027332898797 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X45.019999999999996 Y30 E1 ; move to next point
G1 X41.92 Y26.9 E1.14581449561271 ; move to next point
G1 X48.12 Y26.9 E1.3520273328987968 ; move to next point
G1 F1500 E-1G92 E0  ;Reset ExtruderG1 X35.01 Y30 E1 ; move to next point
G1 X31.91 Y26.9 E1.14581449561271 ; move to next point
G1 X38.11 Y26.9 E1.3520273328987968 ; move to next point
G1 F1500 E-1;-----------------------LayerDone-------------------

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
G1 F1500 E5
;-----------------------ResetDone-------------------


