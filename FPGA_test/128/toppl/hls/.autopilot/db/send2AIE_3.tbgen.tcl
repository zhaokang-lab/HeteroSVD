set moduleName send2AIE_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {send2AIE.3}
set C_modelType { void 0 }
set C_modelArgList {
	{ send_fifo_0 int 128 regular {fifo 0 volatile }  }
	{ norm_tx0_V_data_V int 128 regular {axi_s 1 volatile  { norm_tx0 Data } }  }
	{ norm_tx0_V_keep_V int 16 regular {axi_s 1 volatile  { norm_tx0 Keep } }  }
	{ norm_tx0_V_strb_V int 16 regular {axi_s 1 volatile  { norm_tx0 Strb } }  }
	{ norm_tx0_V_last_V int 1 regular {axi_s 1 volatile  { norm_tx0 Last } }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "send_fifo_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "norm_tx0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "norm_tx0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "norm_tx0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "norm_tx0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ send_fifo_0_dout sc_in sc_lv 128 signal 0 } 
	{ send_fifo_0_num_data_valid sc_in sc_lv 10 signal 0 } 
	{ send_fifo_0_fifo_cap sc_in sc_lv 10 signal 0 } 
	{ send_fifo_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ send_fifo_0_read sc_out sc_logic 1 signal 0 } 
	{ norm_tx0_TDATA sc_out sc_lv 128 signal 1 } 
	{ norm_tx0_TVALID sc_out sc_logic 1 outvld 4 } 
	{ norm_tx0_TREADY sc_in sc_logic 1 outacc 1 } 
	{ norm_tx0_TKEEP sc_out sc_lv 16 signal 2 } 
	{ norm_tx0_TSTRB sc_out sc_lv 16 signal 3 } 
	{ norm_tx0_TLAST sc_out sc_lv 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "send_fifo_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_0", "role": "dout" }} , 
 	{ "name": "send_fifo_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "send_fifo_0", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "send_fifo_0", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_0", "role": "empty_n" }} , 
 	{ "name": "send_fifo_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_0", "role": "read" }} , 
 	{ "name": "norm_tx0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "norm_tx0_V_data_V", "role": "default" }} , 
 	{ "name": "norm_tx0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "norm_tx0_V_last_V", "role": "default" }} , 
 	{ "name": "norm_tx0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "norm_tx0_V_data_V", "role": "default" }} , 
 	{ "name": "norm_tx0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "norm_tx0_V_keep_V", "role": "default" }} , 
 	{ "name": "norm_tx0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "norm_tx0_V_strb_V", "role": "default" }} , 
 	{ "name": "norm_tx0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "norm_tx0_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "send2AIE_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "346", "EstimateLatencyMax" : "346",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "send_fifo_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_send2AIE_3_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "send_fifo_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "norm_tx0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"BlockSignal" : [
					{"Name" : "norm_tx0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_send2AIE_3_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "norm_tx0_V_data_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "norm_tx0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_send2AIE_3_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "norm_tx0_V_keep_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "norm_tx0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_send2AIE_3_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "norm_tx0_V_strb_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "norm_tx0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_send2AIE_3_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "norm_tx0_V_last_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_102_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_send2AIE_3_Pipeline_VITIS_LOOP_112_2_fu_146", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "send2AIE_3_Pipeline_VITIS_LOOP_112_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36", "EstimateLatencyMax" : "36",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "send_fifo_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "norm_tx0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"BlockSignal" : [
					{"Name" : "norm_tx0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "norm_tx0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0"},
			{"Name" : "norm_tx0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0"},
			{"Name" : "norm_tx0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_send2AIE_3_Pipeline_VITIS_LOOP_112_2_fu_146.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	send2AIE_3 {
		send_fifo_0 {Type I LastRead 1 FirstWrite -1}
		norm_tx0_V_data_V {Type O LastRead -1 FirstWrite 2}
		norm_tx0_V_keep_V {Type O LastRead -1 FirstWrite 2}
		norm_tx0_V_strb_V {Type O LastRead -1 FirstWrite 2}
		norm_tx0_V_last_V {Type O LastRead -1 FirstWrite 2}}
	send2AIE_3_Pipeline_VITIS_LOOP_112_2 {
		send_fifo_0 {Type I LastRead 1 FirstWrite -1}
		data_temp {Type IO LastRead 2 FirstWrite 2}
		norm_tx0_V_data_V {Type O LastRead -1 FirstWrite 4}
		norm_tx0_V_keep_V {Type O LastRead -1 FirstWrite 4}
		norm_tx0_V_strb_V {Type O LastRead -1 FirstWrite 4}
		norm_tx0_V_last_V {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "346", "Max" : "346"}
	, {"Name" : "Interval", "Min" : "346", "Max" : "346"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	send_fifo_0 { ap_fifo {  { send_fifo_0_dout fifo_data_in 0 128 }  { send_fifo_0_num_data_valid fifo_status_num_data_valid 0 10 }  { send_fifo_0_fifo_cap fifo_update 0 10 }  { send_fifo_0_empty_n fifo_status 0 1 }  { send_fifo_0_read fifo_port_we 1 1 } } }
	norm_tx0_V_data_V { axis {  { norm_tx0_TDATA out_data 1 128 }  { norm_tx0_TREADY out_acc 0 1 } } }
	norm_tx0_V_keep_V { axis {  { norm_tx0_TKEEP out_data 1 16 } } }
	norm_tx0_V_strb_V { axis {  { norm_tx0_TSTRB out_data 1 16 } } }
	norm_tx0_V_last_V { axis {  { norm_tx0_TVALID out_vld 1 1 }  { norm_tx0_TLAST out_data 1 1 } } }
}
