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
; starting fig
G1 X38.06 Y73.1 E0 ; move to next point
G1 X31.96 Y73.1 E0.2028868237814725 ; move to next point
G1 X35.01 Y70.05 E0.3463494726907518 ; move to next point
G1 X38.06 Y73.1 E0.4898121216000311 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X48.07 Y73.1 E0.4898121216000311 ; move to next point
G1 X41.97 Y73.1 E0.6926989453815036 ; move to next point
G1 X45.019999999999996 Y70.05 E0.8361615942907829 ; move to next point
G1 X48.07 Y73.1 E0.9796242432000621 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X58.08 Y73.1 E0.9796242432000621 ; move to next point
G1 X51.98 Y73.1 E1.1825110669815346 ; move to next point
G1 X55.03 Y70.05 E1.325973715890814 ; move to next point
G1 X58.08 Y73.1 E1.4694363648000934 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X68.09 Y73.1 E1.4694363648000934 ; move to next point
G1 X61.99 Y73.1 E1.672323188581566 ; move to next point
G1 X65.04 Y70.05 E1.8157858374908453 ; move to next point
G1 X68.09 Y73.1 E1.9592484864001247 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X70.03999999999999 Y65.04 E1.9592484864001247 ; move to next point
G1 X65.04 Y70.03999999999999 E2.1944331567432056 ; move to next point
G1 X60.04 Y65.04 E2.4296178270862865 ; move to next point
G1 X65.04 Y60.04 E2.6648024974293674 ; move to next point
G1 X70.03999999999999 Y65.04 E2.8999871677724482 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X60.03 Y65.04 E2.8999871677724482 ; move to next point
G1 X55.03 Y70.03999999999999 E3.135171838115529 ; move to next point
G1 X50.03 Y65.04 E3.37035650845861 ; move to next point
G1 X55.03 Y60.04 E3.605541178801691 ; move to next point
G1 X60.03 Y65.04 E3.8407258491447718 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X50.02 Y65.04 E3.8407258491447718 ; move to next point
G1 X45.019999999999996 Y70.03999999999999 E4.075910519487852 ; move to next point
G1 X40.019999999999996 Y65.04 E4.311095189830933 ; move to next point
G1 X45.019999999999996 Y60.04 E4.546279860174014 ; move to next point
G1 X50.02 Y65.04 E4.781464530517095 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X40.01 Y65.04 E4.781464530517095 ; move to next point
G1 X35.01 Y70.03999999999999 E5.016649200860176 ; move to next point
G1 X30.009999999999998 Y65.04 E5.251833871203257 ; move to next point
G1 X35.01 Y60.04 E5.4870185415463375 ; move to next point
G1 X40.01 Y65.04 E5.722203211889418 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X30 Y65.04 E5.722203211889418 ; move to next point
G1 X26.9 Y68.14 E5.868017707502129 ; move to next point
G1 X26.9 Y61.94 E6.0742305447882154 ; move to next point
G1 X30 Y65.04 E6.220045040400926 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X73.1 Y68.09 E6.220045040400926 ; move to next point
G1 X70.05 Y65.04 E6.363507689310206 ; move to next point
G1 X73.1 Y61.99 E6.506970338219485 ; move to next point
G1 X73.1 Y68.09 E6.709857162000958 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X50.02 Y55.03 E6.709857162000958 ; move to next point
G1 X45.019999999999996 Y60.03 E6.945041832344039 ; move to next point
G1 X40.019999999999996 Y55.03 E7.18022650268712 ; move to next point
G1 X45.019999999999996 Y50.03 E7.415411173030201 ; move to next point
G1 X50.02 Y55.03 E7.6505958433732815 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X70.03999999999999 Y55.03 E7.6505958433732815 ; move to next point
G1 X65.04 Y60.03 E7.885780513716362 ; move to next point
G1 X60.04 Y55.03 E8.120965184059443 ; move to next point
G1 X65.04 Y50.03 E8.356149854402524 ; move to next point
G1 X70.03999999999999 Y55.03 E8.591334524745605 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X60.03 Y55.03 E8.591334524745605 ; move to next point
G1 X55.03 Y60.03 E8.826519195088686 ; move to next point
G1 X50.03 Y55.03 E9.061703865431767 ; move to next point
G1 X55.03 Y50.03 E9.296888535774848 ; move to next point
G1 X60.03 Y55.03 E9.532073206117929 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X40.01 Y55.03 E9.532073206117929 ; move to next point
G1 X35.01 Y60.03 E9.76725787646101 ; move to next point
G1 X30.009999999999998 Y55.03 E10.00244254680409 ; move to next point
G1 X35.01 Y50.03 E10.237627217147171 ; move to next point
G1 X40.01 Y55.03 E10.472811887490252 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X30 Y55.03 E10.472811887490252 ; move to next point
G1 X26.9 Y58.13 E10.618626383102962 ; move to next point
G1 X26.9 Y51.93 E10.824839220389048 ; move to next point
G1 X30 Y55.03 E10.970653716001758 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X73.1 Y58.08 E10.970653716001758 ; move to next point
G1 X70.05 Y55.03 E11.114116364911037 ; move to next point
G1 X73.1 Y51.98 E11.257579013820317 ; move to next point
G1 X73.1 Y58.08 E11.46046583760179 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X70.03999999999999 Y45.019999999999996 E11.46046583760179 ; move to next point
G1 X65.04 Y50.02 E11.69565050794487 ; move to next point
G1 X60.04 Y45.019999999999996 E11.930835178287952 ; move to next point
G1 X65.04 Y40.019999999999996 E12.166019848631032 ; move to next point
G1 X70.03999999999999 Y45.019999999999996 E12.401204518974113 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X60.03 Y45.019999999999996 E12.401204518974113 ; move to next point
G1 X55.03 Y50.02 E12.636389189317194 ; move to next point
G1 X50.03 Y45.019999999999996 E12.871573859660275 ; move to next point
G1 X55.03 Y40.019999999999996 E13.106758530003356 ; move to next point
G1 X60.03 Y45.019999999999996 E13.341943200346437 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X50.02 Y45.019999999999996 E13.341943200346437 ; move to next point
G1 X45.019999999999996 Y50.02 E13.577127870689518 ; move to next point
G1 X40.019999999999996 Y45.019999999999996 E13.812312541032599 ; move to next point
G1 X45.019999999999996 Y40.019999999999996 E14.04749721137568 ; move to next point
G1 X50.02 Y45.019999999999996 E14.28268188171876 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X40.01 Y45.019999999999996 E14.28268188171876 ; move to next point
G1 X35.01 Y50.02 E14.517866552061841 ; move to next point
G1 X30.009999999999998 Y45.019999999999996 E14.753051222404922 ; move to next point
G1 X35.01 Y40.019999999999996 E14.988235892748003 ; move to next point
G1 X40.01 Y45.019999999999996 E15.223420563091084 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X30 Y45.019999999999996 E15.223420563091084 ; move to next point
G1 X26.9 Y48.12 E15.369235058703794 ; move to next point
G1 X26.9 Y41.93 E15.575115294639419 ; move to next point
G1 X30 Y45.019999999999996 E15.720694795553124 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X73.1 Y48.07 E15.720694795553124 ; move to next point
G1 X70.05 Y45.019999999999996 E15.864157444462403 ; move to next point
G1 X73.1 Y41.97 E16.00762009337168 ; move to next point
G1 X73.1 Y48.07 E16.210506917153154 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X40.01 Y35.01 E16.210506917153154 ; move to next point
G1 X35.01 Y40.01 E16.445691587496235 ; move to next point
G1 X30.009999999999998 Y35.01 E16.680876257839316 ; move to next point
G1 X35.01 Y30.009999999999998 E16.916060928182397 ; move to next point
G1 X40.01 Y35.01 E17.151245598525477 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X50.02 Y35.01 E17.151245598525477 ; move to next point
G1 X45.019999999999996 Y40.01 E17.38643026886856 ; move to next point
G1 X40.019999999999996 Y35.01 E17.62161493921164 ; move to next point
G1 X45.019999999999996 Y30.009999999999998 E17.85679960955472 ; move to next point
G1 X50.02 Y35.01 E18.0919842798978 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X60.03 Y35.01 E18.0919842798978 ; move to next point
G1 X55.03 Y40.01 E18.327168950240882 ; move to next point
G1 X50.03 Y35.01 E18.562353620583963 ; move to next point
G1 X55.03 Y30.009999999999998 E18.797538290927044 ; move to next point
G1 X60.03 Y35.01 E19.032722961270125 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X70.03999999999999 Y35.01 E19.032722961270125 ; move to next point
G1 X65.04 Y40.01 E19.267907631613205 ; move to next point
G1 X60.04 Y35.01 E19.503092301956286 ; move to next point
G1 X65.04 Y30.009999999999998 E19.738276972299367 ; move to next point
G1 X70.03999999999999 Y35.01 E19.973461642642448 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X30 Y35.01 E19.973461642642448 ; move to next point
G1 X26.9 Y38.11 E20.11927613825516 ; move to next point
G1 X26.9 Y31.91 E20.325488975541248 ; move to next point
G1 X30 Y35.01 E20.47130347115396 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X73.1 Y38.06 E20.47130347115396 ; move to next point
G1 X70.05 Y35.01 E20.614766120063237 ; move to next point
G1 X73.1 Y31.96 E20.758228768972515 ; move to next point
G1 X73.1 Y38.06 E20.961115592753988 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X65.04 Y30 E20.961115592753988 ; move to next point
G1 X61.94 Y26.9 E21.1069300883667 ; move to next point
G1 X68.14 Y26.9 E21.313142925652787 ; move to next point
G1 X65.04 Y30 E21.4589574212655 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X55.03 Y30 E21.4589574212655 ; move to next point
G1 X51.93 Y26.9 E21.60477191687821 ; move to next point
G1 X58.13 Y26.9 E21.8109847541643 ; move to next point
G1 X55.03 Y30 E21.95679924977701 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X45.019999999999996 Y30 E21.95679924977701 ; move to next point
G1 X41.92 Y26.9 E22.10261374538972 ; move to next point
G1 X48.12 Y26.9 E22.30882658267581 ; move to next point
G1 X45.019999999999996 Y30 E22.45464107828852 ; move to next point
; done with fig
G1 F1500 E-1
; starting fig
G1 X35.01 Y30 E22.45464107828852 ; move to next point
G1 X31.91 Y26.9 E22.600455573901232 ; move to next point
G1 X38.11 Y26.9 E22.80666841118732 ; move to next point
G1 X35.01 Y30 E22.952482906800032 ; move to next point
; done with fig
G1 F1500 E-1
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
G1 F1500 E5
;-----------------------ResetDone-------------------


