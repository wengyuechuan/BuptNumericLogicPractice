
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7k70t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7k70t2default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1233.8322default:default2
0.0002default:defaultZ17-268h px� 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 0f69df79
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.003 . Memory (MB): peak = 1233.832 ; gain = 0.0002default:defaulth px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1233.8322default:default2
0.0002default:defaultZ17-268h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2"
u2/cout_i_2__02default:default2
92default:default2�
p	u3/num0_reg[2] {FDCE}
	u3/num0_reg[1] {FDCE}
	u3/num0_reg[0] {FDCE}
	u3/num0_reg[3] {FDCE}
	u3/cout_reg {FDRE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2"
u3/num0[3]_i_22default:default2
82default:default2�
s	u4/num0_reg[3] {FDCE}
	u4/num0_reg[1] {FDCE}
	u4/num1_reg[0] {FDCE}
	u4/num1_reg[1] {FDCE}
	u4/num1_reg[2] {FDCE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2
u1/cout_i_22default:default2
92default:default2�
p	u2/cout_reg {FDRE}
	u2/num0_reg[2] {FDCE}
	u2/num1_reg[0] {FDCE}
	u2/num1_reg[1] {FDCE}
	u2/num0_reg[3] {FDCE}
2default:defaultZ30-568h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 12aa7a81c
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.740 . Memory (MB): peak = 1235.531 ; gain = 1.6992default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 190e4095b
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.763 . Memory (MB): peak = 1235.531 ; gain = 1.6992default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 190e4095b
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.764 . Memory (MB): peak = 1235.531 ; gain = 1.6992default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 190e4095b
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.765 . Memory (MB): peak = 1235.531 ; gain = 1.6992default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px� 
C
.Phase 2.1 Floorplanning | Checksum: 190e4095b
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.767 . Memory (MB): peak = 1235.609 ; gain = 1.7772default:defaulth px� 
h
Eplace_design is not in timing mode. Skip physical synthesis in placer29*	placeflowZ46-29h px� 
D
/Phase 2 Global Placement | Checksum: 1994308c4
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.917 . Memory (MB): peak = 1239.977 ; gain = 6.1452default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 1994308c4
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.919 . Memory (MB): peak = 1239.977 ; gain = 6.1452default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 158776ecd
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.921 . Memory (MB): peak = 1239.977 ; gain = 6.1452default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 16a7a7b72
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.925 . Memory (MB): peak = 1239.977 ; gain = 6.1452default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 16a7a7b72
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.926 . Memory (MB): peak = 1239.977 ; gain = 6.1452default:defaulth px� 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
R
=Phase 3.5 Small Shape Detail Placement | Checksum: 20a0441a4
*commonh px� 
�

%s
*constraints2t
`Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.993 . Memory (MB): peak = 1245.754 ; gain = 11.9222default:defaulth px� 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.6 Re-assign LUT pins | Checksum: 20a0441a4
*commonh px� 
�

%s
*constraints2t
`Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.998 . Memory (MB): peak = 1245.754 ; gain = 11.9222default:defaulth px� 
�

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.7 Pipeline Register Optimization | Checksum: 20a0441a4
*commonh px� 
�

%s
*constraints2t
`Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.999 . Memory (MB): peak = 1245.754 ; gain = 11.9222default:defaulth px� 
D
/Phase 3 Detail Placement | Checksum: 20a0441a4
*commonh px� 
�

%s
*constraints2t
`Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.999 . Memory (MB): peak = 1245.754 ; gain = 11.9222default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
N
9Phase 4.1 Post Commit Optimization | Checksum: 20a0441a4
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1245.754 ; gain = 11.9222default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 20a0441a4
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1245.754 ; gain = 11.9222default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
F
1Phase 4.3 Placer Reporting | Checksum: 20a0441a4
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1245.754 ; gain = 11.9222default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1245.7542default:default2
0.0002default:defaultZ17-268h px� 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 1b9e8aa52
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1245.754 ; gain = 11.9222default:defaulth px� 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1b9e8aa52
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1245.754 ; gain = 11.9222default:defaulth px� 
=
(Ending Placer Task | Checksum: c507d728
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1245.754 ; gain = 11.9222default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
372default:default2
52default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1245.7542default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.0602default:default2
1245.7542default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2R
>D:/vhdl/clock_vivado/clock_vivado.runs/impl_1/clock_placed.dcp2default:defaultZ17-1381h px� 
`
%s4*runtcl2D
0Executing : report_io -file clock_io_placed.rpt
2default:defaulth px� 
�
lreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.063 . Memory (MB): peak = 1256.039 ; gain = 10.285
*commonh px� 
�
%s4*runtcl2v
bExecuting : report_utilization -file clock_utilization_placed.rpt -pb clock_utilization_placed.pb
2default:defaulth px� 
}
%s4*runtcl2a
MExecuting : report_control_sets -verbose -file clock_control_sets_placed.rpt
2default:defaulth px� 
�
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.001 . Memory (MB): peak = 1256.039 ; gain = 0.000
*commonh px� 


End Record