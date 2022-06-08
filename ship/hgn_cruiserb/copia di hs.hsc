// HOD script file.
// Created by CFHodEd v3.1.5


// 4 materials located.
STAT_Add("hw2Shader", "ship", 2); {
	STAT_SetParamter(1, 1, 5, 0, 0, 0, 0, 1, "$diffuse");
	STAT_SetParamter(1, 2, 5, 0, 0, 0, 0, 2, "$glow");
}
STAT_Add("hw2Shader1", "thruster", 4); {
	STAT_SetParamter(2, 1, 5, 0, 0, 0, 0, 3, "$diffuseOn");
	STAT_SetParamter(2, 2, 5, 0, 0, 0, 0, 4, "$diffuseOff");
	STAT_SetParamter(2, 3, 5, 0, 0, 0, 0, 5, "$glowOn");
	STAT_SetParamter(2, 4, 5, 0, 0, 0, 0, 6, "$glowOff");
}
STAT_Add("hw2Shader2", "badge", 3); {
	STAT_SetParamter(3, 1, 5, 0, 0, 0, 0, 7, "$mask");
	STAT_SetParamter(3, 2, 5, 0, 0, 0, 0, 8, "$diffuse");
	STAT_SetParamter(3, 3, 5, 0, 0, 0, 0, 9, "$glow");
}
STAT_Add("lambert1", "default", 0);


// 124 joints located.
HIER_Add("Hardpoint_PDS1_Position", "Root", 37, 27, 11, 0, 0, -90, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS1_Rest", "Hardpoint_PDS1_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS1_Direction", "Hardpoint_PDS1_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS2_Position", "Root", -37, 27, 11, 0, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS2_Rest", "Hardpoint_PDS2_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS2_Direction", "Hardpoint_PDS2_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS3_Position", "Root", 37, 27, 91, 0, 0, -90, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS3_Rest", "Hardpoint_PDS3_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS3_Direction", "Hardpoint_PDS3_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS4_Position", "Root", -37, 27, 91, 0, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS4_Rest", "Hardpoint_PDS4_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS4_Direction", "Hardpoint_PDS4_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS5_Position", "Root", 0, 55, -126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS5_Rest", "Hardpoint_PDS5_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS5_Direction", "Hardpoint_PDS5_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS6_Position", "Root", 25, 41, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS6_Rest", "Hardpoint_PDS6_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS6_Direction", "Hardpoint_PDS6_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS7_Position", "Root", -25, 41, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS7_Rest", "Hardpoint_PDS7_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS7_Direction", "Hardpoint_PDS7_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS8_Position", "Root", 34, -9, 44, 0, 0, -113, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS8_Rest", "Hardpoint_PDS8_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS8_Direction", "Hardpoint_PDS8_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS9_Position", "Root", -34, -9, 44, 0, 0, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS9_Rest", "Hardpoint_PDS9_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS9_Direction", "Hardpoint_PDS9_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS10_Position", "Root", 34, -9, -19, 0, 0, -113, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS10_Rest", "Hardpoint_PDS10_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS10_Direction", "Hardpoint_PDS10_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS11_Position", "Root", -34, -9, -19, 0, 0, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS11_Rest", "Hardpoint_PDS11_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS11_Direction", "Hardpoint_PDS11_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS12_Position", "Root", 34, -9, -112, 0, 0, -113, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS12_Rest", "Hardpoint_PDS12_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS12_Direction", "Hardpoint_PDS12_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS13_Position", "Root", -34, -9, -112, 0, 0, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS13_Rest", "Hardpoint_PDS13_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS13_Direction", "Hardpoint_PDS13_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS14_Position", "Root", 34, -9, -170, 0, 0, -113, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS14_Rest", "Hardpoint_PDS14_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS14_Direction", "Hardpoint_PDS14_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS15_Position", "Root", -34, -9, -170, 0, 0, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS15_Rest", "Hardpoint_PDS15_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_PDS15_Direction", "Hardpoint_PDS15_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint0", "Root", -10, 42, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint0Heading", "CapturePoint0", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint0Up", "CapturePoint0", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint0Left", "CapturePoint0", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint1", "Root", 0, 48, -89, 13,75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint1Heading", "CapturePoint1", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint1Up", "CapturePoint1", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint1Left", "CapturePoint1", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint2", "Root", 0, -8, 186, 0, 0, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint2Heading", "CapturePoint2", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint2Up", "CapturePoint2", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint2Left", "CapturePoint2", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint0", "Root", 10, 42, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint0Heading", "RepairPoint0", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint0Up", "RepairPoint0", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint0Left", "RepairPoint0", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint1", "Root", -70, -25, -70, 0, 90, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint1Heading", "RepairPoint1", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint1Up", "RepairPoint1", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint1Left", "RepairPoint1", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint2", "Root", 35, 17, -84, 0, -90, -90, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint2Heading", "RepairPoint2", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint2Up", "RepairPoint2", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint2Left", "RepairPoint2", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint3", "Root", 14, -20, -70, -180, -180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint3Heading", "RepairPoint3", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint3Up", "RepairPoint3", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint3Left", "RepairPoint3", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_Engine_Position", "Root", 0, 9, -220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_Engine_Rest", "Hardpoint_Engine_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_Engine_Direction", "Hardpoint_Engine_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_Torpedo_Tube_Position", "Root", 32, 16, 162, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_Torpedo_Tube_Rest", "Hardpoint_Torpedo_Tube_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_Torpedo_Tube_Direction", "Hardpoint_Torpedo_Tube_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_Torpedo_TubeSlave_Position", "Root", 32, 8, 162, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_Torpedo_TubeSlave_Rest", "Hardpoint_Torpedo_TubeSlave_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_Torpedo_TubeSlave_Direction", "Hardpoint_Torpedo_TubeSlave_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_Torpedo_TubeSlave1_Position", "Root", -32, 16, 162, 0, -10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_Torpedo_TubeSlave1_Rest", "Hardpoint_Torpedo_TubeSlave1_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_Torpedo_TubeSlave1_Direction", "Hardpoint_Torpedo_TubeSlave1_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_Torpedo_TubeSlave2_Position", "Root", -32, 8, 162, 0, -10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_Torpedo_TubeSlave2_Rest", "Hardpoint_Torpedo_TubeSlave2_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_Torpedo_TubeSlave2_Direction", "Hardpoint_Torpedo_TubeSlave2_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WUP1_Position", "Root", 0, 37, -9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WUP1_Rest", "Hardpoint_WUP1_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WUP1_Direction", "Hardpoint_WUP1_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WUP2_Position", "Root", 0, 36, -206, 0, -180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WUP2_Rest", "Hardpoint_WUP2_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WUP2_Direction", "Hardpoint_WUP2_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WDOWN1_Position", "Root", 0, -20, 0, 0, 0, -180, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WDOWN1_Rest", "Hardpoint_WDOWN1_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WDOWN1_Direction", "Hardpoint_WDOWN1_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WDOWN2_Position", "Root", 0, -8, 96, 0, 0, -180, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WDOWN2_Rest", "Hardpoint_WDOWN2_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WDOWN2_Direction", "Hardpoint_WDOWN2_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WDOWN3_Position", "Root", 0, -18, -140, 0, 180, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WDOWN3_Rest", "Hardpoint_WDOWN3_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WDOWN3_Direction", "Hardpoint_WDOWN3_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WL1_Position", "Root", 38, 13, 50, 0, 0, -90, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WL1_Rest", "Hardpoint_WL1_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WL1_Direction", "Hardpoint_WL1_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WR1_Position", "Root", -38, 13, 50, 0, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WR1_Rest", "Hardpoint_WR1_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_WR1_Direction", "Hardpoint_WR1_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("EngineNozzle1", "Root", 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl1", "Root", -5, 90, -145, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl2", "Root", 6, 2, 292, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl3", "Root", 2, 2, 279, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl4", "Root", -35, 73, -132, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl5", "Root", -90, -36, -72, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl6", "Root", 90, -36, -72, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl7", "Root", 16, 66, -99, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl8", "Root", -16, 66, -99, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl9", "Root", -63, 0, -131, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl10", "Root", 30, 8, 187, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl11", "Root", 30, 16, 187, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl12", "Root", -30, 16, 187, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl13", "Root", -30, 8, 187, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);


// 0 NavLights located.


// 30 markers located.
MRKR_Add("marker1", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker2", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker3", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker4", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker5", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker6", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker7", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker8", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker9", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker10", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker11", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker12", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker13", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker14", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker15", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker16", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker17", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker18", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker19", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker20", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker21", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker22", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker23", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker24", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker25", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker26", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker27", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker28", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker29", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker30", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);


// 0 dockpaths located.


// 8 BNDVs located.
BNDV_SetNumVertices(8); {
	BNDV_SetVertex(1, -90,30178, -36,5368, -247,4883);
	BNDV_SetVertex(2, 0, 0, 0);
	BNDV_SetVertex(3, 0, 0, 0);
	BNDV_SetVertex(4, 0, 0, 0);
	BNDV_SetVertex(5, 0, 0, 0);
	BNDV_SetVertex(6, 0, 0, 0);
	BNDV_SetVertex(7, 90,30173, 90,29277, 291,0601);
	BNDV_SetVertex(8, 0, 0, 0);
}

// 0 level lights located.

// 0 point star field groups located.

// 0 textured star field groups located.


// EOF
