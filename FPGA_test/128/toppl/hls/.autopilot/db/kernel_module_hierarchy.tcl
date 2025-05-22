set ModuleHierarchy {[{
"Name" : "TopPL","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "SystemControl_U0","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_SystemControl_Pipeline_VITIS_LOOP_295_1_fu_132","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_295_1","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_SystemControl_Pipeline_VITIS_LOOP_315_4_fu_161","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_315_4","ID" : "5","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_301_2","ID" : "6","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_SystemControl_Pipeline_VITIS_LOOP_304_3_fu_142","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_304_3","ID" : "8","Type" : "pipeline"},]},
		{"Name" : "grp_SystemControl_Pipeline_VITIS_LOOP_321_5_fu_151","ID" : "9","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_321_5","ID" : "10","Type" : "pipeline"},]},]},]},
	{"Name" : "Send_U0","ID" : "11","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_169_1","ID" : "12","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_dataflow_parent_loop_proc_fu_94","ID" : "13","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_172_2","ID" : "14","Type" : "no",
				"SubInsts" : [
				{"Name" : "dataflow_in_loop_VITIS_LOOP_172_2_U0","ID" : "15","Type" : "dataflow",
						"SubInsts" : [
						{"Name" : "send2AIE_U0","ID" : "16","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_102_1","ID" : "17","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_146","ID" : "18","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_112_2","ID" : "19","Type" : "pipeline"},]},]},]},
						{"Name" : "send2AIE_2_U0","ID" : "20","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_102_1","ID" : "21","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_send2AIE_2_Pipeline_VITIS_LOOP_112_2_fu_146","ID" : "22","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_112_2","ID" : "23","Type" : "pipeline"},]},]},]},]},]},]},]},
		{"Name" : "VITIS_LOOP_179_3","ID" : "24","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_send2AIE_3_fu_118","ID" : "25","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_102_1","ID" : "26","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_send2AIE_3_Pipeline_VITIS_LOOP_112_2_fu_146","ID" : "27","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_112_2","ID" : "28","Type" : "pipeline"},]},]},]},]},]},
	{"Name" : "RoundRobin_U0","ID" : "29","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_140_1","ID" : "30","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_150_3_fu_240","ID" : "31","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_150_3","ID" : "32","Type" : "pipeline"},]},
		{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_142_2_fu_249","ID" : "33","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_142_2","ID" : "34","Type" : "pipeline"},]},]},
		{"Name" : "VITIS_LOOP_250_1","ID" : "35","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_254_2","ID" : "36","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_256_3_fu_258","ID" : "37","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_256_3","ID" : "38","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_261_4_fu_266","ID" : "39","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_261_4","ID" : "40","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_267_5_fu_274","ID" : "41","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_267_5","ID" : "42","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_275_6_fu_286","ID" : "43","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_275_6","ID" : "44","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_280_7_fu_294","ID" : "45","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_280_7","ID" : "46","Type" : "pipeline"},]},]},]},
		{"Name" : "VITIS_LOOP_197_1","ID" : "47","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_198_2_fu_302","ID" : "48","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_198_2","ID" : "49","Type" : "pipeline"},]},]},]},
	{"Name" : "Receive_U0","ID" : "50","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_216_1","ID" : "51","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_dataflow_parent_loop_proc10_fu_100","ID" : "52","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_220_2","ID" : "53","Type" : "no",
				"SubInsts" : [
				{"Name" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0","ID" : "54","Type" : "dataflow",
						"SubInsts" : [
						{"Name" : "receive4AIE_1_U0","ID" : "55","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_69_1","ID" : "56","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158","ID" : "57","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_76_2","ID" : "58","Type" : "pipeline"},]},]},]},
						{"Name" : "receive4AIE_U0","ID" : "59","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_69_1","ID" : "60","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158","ID" : "61","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_76_2","ID" : "62","Type" : "pipeline"},]},]},]},
						{"Name" : "Block_newFuncRoot_proc_proc_U0","ID" : "63","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc12_U0","ID" : "64","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc11_U0","ID" : "65","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc13_U0","ID" : "66","Type" : "sequential"},]},]},]},]},
		{"Name" : "VITIS_LOOP_188_1","ID" : "67","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_receive4DDR_fu_128","ID" : "68","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_32_1","ID" : "69","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119","ID" : "70","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_39_2","ID" : "71","Type" : "pipeline"},]},]},]},]},]},]
}]}