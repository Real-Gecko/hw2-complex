// HOD script file.
// Created by CFHodEd v3.1.5


// 13 materials located.
STAT_Add("hw2Shader1", "ship", 2); {
	STAT_SetParamter(1, 1, 5, 0, 0, 0, 0, 1, "$diffuse");
	STAT_SetParamter(1, 2, 5, 0, 0, 0, 0, 2, "$glow");
}
STAT_Add("hw2Shader2", "ship", 2); {
	STAT_SetParamter(2, 1, 5, 0, 0, 0, 0, 3, "$diffuse");
	STAT_SetParamter(2, 2, 5, 0, 0, 0, 0, 4, "$glow");
}
STAT_Add("hw2Shader6", "ship", 2); {
	STAT_SetParamter(3, 1, 5, 0, 0, 0, 0, 5, "$diffuse");
	STAT_SetParamter(3, 2, 5, 0, 0, 0, 0, 6, "$glow");
}
STAT_Add("lambert1", "default", 0);
STAT_Add("hw2Shader", "ship", 2); {
	STAT_SetParamter(5, 1, 5, 0, 0, 0, 0, 7, "$diffuse");
	STAT_SetParamter(5, 2, 5, 0, 0, 0, 0, 8, "$glow");
}
STAT_Add("hw2Shader7", "ship", 2); {
	STAT_SetParamter(6, 1, 5, 0, 0, 0, 0, 9, "$diffuse");
	STAT_SetParamter(6, 2, 5, 0, 0, 0, 0, 10, "$glow");
}
STAT_Add("bottom", "ship", 2); {
	STAT_SetParamter(7, 1, 5, 0, 0, 0, 0, 11, "$diffuse");
	STAT_SetParamter(7, 2, 5, 0, 0, 0, 0, 12, "$glow");
}
STAT_Add("top1", "ship", 2); {
	STAT_SetParamter(8, 1, 5, 0, 0, 0, 0, 13, "$diffuse");
	STAT_SetParamter(8, 2, 5, 0, 0, 0, 0, 14, "$glow");
}
STAT_Add("Engine", "ship", 2); {
	STAT_SetParamter(9, 1, 5, 0, 0, 0, 0, 15, "$diffuse");
	STAT_SetParamter(9, 2, 5, 0, 0, 0, 0, 16, "$glow");
}
STAT_Add("hw2Shader5", "ship", 2); {
	STAT_SetParamter(10, 1, 5, 0, 0, 0, 0, 17, "$diffuse");
	STAT_SetParamter(10, 2, 5, 0, 0, 0, 0, 18, "$glow");
}
STAT_Add("hw2Shader3", "ship", 2); {
	STAT_SetParamter(11, 1, 5, 0, 0, 0, 0, 19, "$diffuse");
	STAT_SetParamter(11, 2, 5, 0, 0, 0, 0, 20, "$glow");
}
STAT_Add("hw2Shader4", "badge", 3); {
	STAT_SetParamter(12, 1, 5, 0, 0, 0, 0, 21, "$mask");
	STAT_SetParamter(12, 2, 5, 0, 0, 0, 0, 22, "$diffuse");
	STAT_SetParamter(12, 3, 5, 0, 0, 0, 0, 23, "$glow");
}
STAT_Add("hw2Shader8", "ship", 2); {
	STAT_SetParamter(13, 1, 5, 0, 0, 0, 0, 24, "$diffuse");
	STAT_SetParamter(13, 2, 5, 0, 0, 0, 0, 25, "$glow");
}


// 154 joints located.
HIER_Add("Hardpoint_w1_Position", "Root", 3, 769,6, -122,4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w1_Rest", "Hardpoint_w1_Position", 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w1_Direction", "Hardpoint_w1_Position", 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w2_Position", "Root", 3, 769,6, 156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w2_Rest", "Hardpoint_w2_Position", 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w2_Direction", "Hardpoint_w2_Position", 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w3_Position", "Root", 3, 769,6, 446,4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w3_Rest", "Hardpoint_w3_Position", 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w3_Direction", "Hardpoint_w3_Position", 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w4_Position", "Root", 3, 769,6, 720, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w4_Rest", "Hardpoint_w4_Position", 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w4_Direction", "Hardpoint_w4_Position", 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w5_Position", "Root", 3, 769,6, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w5_Rest", "Hardpoint_w5_Position", 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w5_Direction", "Hardpoint_w5_Position", 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w6_Position", "Root", 3, 769,6, 1295,2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w6_Rest", "Hardpoint_w6_Position", 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w6_Direction", "Hardpoint_w6_Position", 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w7_Position", "Root", 3, 756, 1568,8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w7_Rest", "Hardpoint_w7_Position", 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w7_Direction", "Hardpoint_w7_Position", 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w8_Position", "Root", 3, -306,4, 1384, 0, 0, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w8_Rest", "Hardpoint_w8_Position", 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w8_Direction", "Hardpoint_w8_Position", 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w9_Position", "Root", -304, 9,6, 1160, 0, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w9_Rest", "Hardpoint_w9_Position", 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w9_Direction", "Hardpoint_w9_Position", 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w10_Position", "Root", 304, 9,6, 1160, 0, 0, -90, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w10_Rest", "Hardpoint_w10_Position", 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w10_Direction", "Hardpoint_w10_Position", 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w11_Position", "Root", -229, 259,2, -1896, 0, -180, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w11_Rest", "Hardpoint_w11_Position", 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_w11_Direction", "Hardpoint_w11_Position", 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_n1_Position", "Root", 213, 282,4, 814,4, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_n1_Rest", "Weapon_n1_Position", 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_n1_Direction", "Weapon_n1_Position", 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_n2_Position", "Root", -213, 282,4, 814,4, 0, -90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_n2_Rest", "Weapon_n2_Position", 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_n2_Direction", "Weapon_n2_Position", 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w12_Position", "Root", 229, 259,2, -1896, 0, -180, -77, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w12_Rest", "Weapon_w12_Position", 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w12_Direction", "Weapon_w12_Position", 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w13_Position", "Root", 3, 750, -1278, 0, -180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w13_Rest", "Weapon_w13_Position", 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w13_Direction", "Weapon_w13_Position", 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w14_Position", "Root", 3, -238, -1371, 0, -180, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w14_Rest", "Weapon_w14_Position", 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w14_Direction", "Weapon_w14_Position", 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w17_Position", "Root", 290, -98, 1792, 0, 0, -90, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w17_Rest", "Weapon_w17_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w17_Direction", "Weapon_w17_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w16_Position", "Root", -179, 459, 383, 0, -90, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w16_Rest", "Weapon_w16_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w16_Direction", "Weapon_w16_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w15_Position", "Root", 179, 459, 383, 0, 90, -76, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w15_Rest", "Weapon_w15_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w15_Direction", "Weapon_w15_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w18_Position", "Root", -290, -94, 1792, 0, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w18_Rest", "Weapon_w18_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w18_Direction", "Weapon_w18_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w19_Position", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w19_Rest", "Weapon_w19_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w19_Direction", "Weapon_w19_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w20_Position", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w20_Rest", "Weapon_w20_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Weapon_w20_Direction", "Weapon_w20_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_ec_Position", "Root", 321, -66, -1413, 0, 0, -90, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_ec_Rest", "Hardpoint_ec_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_ec_Direction", "Hardpoint_ec_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_ec1_Position", "Root", -321, -60, -1405, 0, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_ec1_Rest", "Hardpoint_ec1_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_ec1_Direction", "Hardpoint_ec1_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_s_Position", "Root", 140, -233, 1690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_s_Rest", "Hardpoint_s_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_s_Direction", "Hardpoint_s_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_s1_Position", "Root", -140, -233, 1690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_s1_Rest", "Hardpoint_s1_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_s1_Direction", "Hardpoint_s1_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint1", "Root", 188, 437, 1221, 0, -90, -74, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint1Heading", "CapturePoint1", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint1Up", "CapturePoint1", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint1Left", "CapturePoint1", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint2", "Root", -188, 437, 1221, 0, 90, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint2Heading", "CapturePoint2", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint2Up", "CapturePoint2", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint2Left", "CapturePoint2", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint3", "Root", 0, 774, -670, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint3Heading", "CapturePoint3", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint3Up", "CapturePoint3", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint3Left", "CapturePoint3", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint0", "Root", 213, 340, 110, 0, -90, -74, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint0Heading", "CapturePoint0", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint0Up", "CapturePoint0", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint0Left", "CapturePoint0", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint4", "Root", -213, 340, 110, 0, 90, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint4Heading", "CapturePoint4", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint4Up", "CapturePoint4", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("CapturePoint4Left", "CapturePoint4", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint0", "Root", 288, -79, -928, 0, -90, -90, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint0Heading", "RepairPoint0", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint0Up", "RepairPoint0", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint0Left", "RepairPoint0", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint1", "Root", -288, -79, -928, 0, 90, -90, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint1Heading", "RepairPoint1", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint1Up", "RepairPoint1", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint1Left", "RepairPoint1", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint2", "Root", 316, -27, 1006, 0, 90, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint2Heading", "RepairPoint2", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint2Up", "RepairPoint2", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint2Left", "RepairPoint2", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint3", "Root", -316, -27, 1006, 0, 90, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint3Heading", "RepairPoint3", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint3Up", "RepairPoint3", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint3Left", "RepairPoint3", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint4", "Root", 106, -61, 1861, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint4Heading", "RepairPoint4", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint4Up", "RepairPoint4", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint4Left", "RepairPoint4", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint5", "Root", 182, 470, -330, 0, -90, -74, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint5Heading", "RepairPoint5", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint5Up", "RepairPoint5", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint5Left", "RepairPoint5", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint6", "Root", -182, 470, -330, 0, 90, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint6Heading", "RepairPoint6", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint6Up", "RepairPoint6", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint6Left", "RepairPoint6", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint7", "Root", -63, 770, -1060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint7Heading", "RepairPoint7", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint7Up", "RepairPoint7", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint7Left", "RepairPoint7", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint8", "Root", 155, 560, -1961, -71,04677, 9,167429, 8,537737E-08, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint8Heading", "RepairPoint8", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint8Up", "RepairPoint8", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("RepairPoint8Left", "RepairPoint8", 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("moshipdoor", "Root", 0, -240, 790, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("DockingAnimationRootForShips", "moshipdoor", 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl1", "Root", -168, 20, 2063, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl2", "Root", -82, 545, 2189, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl3", "Root", 50, -709, -1147, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl4", "Root", 3, 1039, -1619, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl5", "Root", -71, -667, -1148, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl6", "Root", -125, 176, -2158, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl7", "Root", 125, 176, -2158, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl8", "Root", 129, -734, -2158, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl9", "Root", -129, -734, -2158, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl10", "Root", -127, -318, -2158, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("nl11", "Root", 129, -317, -2158, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1);
HIER_Add("Hardpoint_fc1_Position", "Root", 291, 169, -610, 0, 0, -74, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_fc1_Rest", "Hardpoint_fc1_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_fc1_Direction", "Hardpoint_fc1_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_fc2_Position", "Root", -291, 169, -610, 0, 0, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_fc2_Rest", "Hardpoint_fc2_Position", 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
HIER_Add("Hardpoint_fc2_Direction", "Hardpoint_fc2_Position", 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


// 13 NavLights located.
NAVL_Add("Weapon_n1_Position", 0, 255, 10, 0,5, "default", 0,9333333, 0,7254902, 9,411765E-02, 1, 0, 1, 0);
NAVL_Add("Weapon_n2_Position", 0, 255, 10, 0,5, "default", 0,9333333, 0,7254902, 9,411765E-02, 1, 0, 1, 0);
NAVL_Add("nl1", 0, 25, 1, 0,75, "default", 1, 0,5647059, 0, 1, 0, 1, 0);
NAVL_Add("nl2", 0, 40, 2, 0,5, "default", 1, 1, 1, 1, 0, 1, 0);
NAVL_Add("nl3", 0, 40, 2, 0,5, "default", 1, 1, 1, 1, 0, 1, 0);
NAVL_Add("nl4", 0, 40, 2, 0,5, "default", 1, 1, 1, 1, 0, 1, 0);
NAVL_Add("nl5", 0, 25, 1, 0,75, "default", 1, 0,5647059, 0, 1, 0, 1, 0);
NAVL_Add("nl8", 0, 35, 1, 0,75, "default", 1, 0,5647059, 0, 1, 0, 1, 0);
NAVL_Add("nl9", 0, 35, 1, 0,75, "default", 1, 0,5647059, 0, 1, 0, 1, 0);
NAVL_Add("nl10", 0, 35, 1, 0,75, "default", 1, 0,5647059, 0, 1, 0, 1, 0);
NAVL_Add("nl11", 0, 35, 1, 0,75, "default", 1, 0,5647059, 0, 1, 0, 1, 0);
NAVL_Add("nl6", 0, 35, 1, 0,75, "default", 1, 0,5647059, 0, 1, 0, 1, 0);
NAVL_Add("nl7", 0, 35, 1, 0,75, "default", 1, 0,5647059, 0, 1, 0, 1, 0);


// 45 markers located.
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
MRKR_Add("marker31", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker32", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker33", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker34", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker35", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker36", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker37", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker38", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker39", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker40", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker41", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker42", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker43", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker44", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);
MRKR_Add("marker45", "Root", 0, 0, 0, 0, 0, 0, 0, 0, 0);


// 4 dockpaths located.
DOCK_Add("path1", "World", 0, 0, "Fighter", 0, "", 4); {
	DOCK_SetKeyframe(1, 1, 850, 80, -900, 0, 0, 0, 0, 50, 0, 0, 0, 0, 1, 1, 0, 0);
	DOCK_SetKeyframe(1, 2, 750, -80, -600, 0, 0, 0, 0, 25, 0, 0, 0, 0, 1, 0, 0, 0);
	DOCK_SetKeyframe(1, 3, 100, -80, -700, 0, -180, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0);
	DOCK_SetKeyframe(1, 4, 100, -80, -1200, 0, -180, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0);
}
DOCK_Add("path2", "World", 1, 0, "Fighter", 0, "", 3); {
	DOCK_SetKeyframe(2, 1, 100, -130, -1200, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0);
	DOCK_SetKeyframe(2, 2, 100, -120, -600, 0, 45, 0, 0, 50, 0, 0, 0, 0, 1, 0, 0, 0);
	DOCK_SetKeyframe(2, 3, 750, -120, -600, 0, 90, 0, 0, 50, 0, 0, 0, 0, 1, 0, 0, 0);
}
DOCK_Add("path3", "World", 0, 0, "Corvette", 0, "", 4); {
	DOCK_SetKeyframe(3, 1, -850, 80, -900, 0, 0, 0, 0, 50, 0, 0, 0, 0, 1, 1, 0, 0);
	DOCK_SetKeyframe(3, 2, -750, -80, -600, 0, 0, 0, 0, 25, 0, 0, 0, 0, 1, 0, 0, 0);
	DOCK_SetKeyframe(3, 3, -100, -80, -700, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0);
	DOCK_SetKeyframe(3, 4, -100, -80, -1200, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0);
}
DOCK_Add("path4", "World", 1, 0, "Corvette", 0, "", 3); {
	DOCK_SetKeyframe(4, 1, -100, -130, -1200, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0);
	DOCK_SetKeyframe(4, 2, -100, -120, -600, 0, 0, 0, 0, 50, 0, 0, 0, 0, 1, 0, 0, 0);
	DOCK_SetKeyframe(4, 3, -750, -120, -600, 0, 0, 0, 0, 50, 0, 0, 0, 0, 1, 0, 0, 0);
}


// 8 BNDVs located.
BNDV_SetNumVertices(8); {
	BNDV_SetVertex(1, -318,0072, -771,4227, -2169,633);
	BNDV_SetVertex(2, 0, 0, 0);
	BNDV_SetVertex(3, 0, 0, 0);
	BNDV_SetVertex(4, 0, 0, 0);
	BNDV_SetVertex(5, 0, 0, 0);
	BNDV_SetVertex(6, 0, 0, 0);
	BNDV_SetVertex(7, 318,4868, 1035,946, 2184,809);
	BNDV_SetVertex(8, 0, 0, 0);
}

// 0 level lights located.

// 0 point star field groups located.

// 0 textured star field groups located.


// EOF
