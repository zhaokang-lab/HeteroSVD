set moduleName SystemControl_Pipeline_VITIS_LOOP_315_4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {SystemControl_Pipeline_VITIS_LOOP_315_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ syscontrol_0 int 1 regular {fifo 1 volatile }  }
	{ syscontrol_1 int 1 regular {fifo 1 volatile }  }
	{ syscontrol_2 int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "syscontrol_0", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "syscontrol_1", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "syscontrol_2", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ syscontrol_1_din sc_out sc_lv 1 signal 1 } 
	{ syscontrol_1_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ syscontrol_1_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ syscontrol_1_full_n sc_in sc_logic 1 signal 1 } 
	{ syscontrol_1_write sc_out sc_logic 1 signal 1 } 
	{ syscontrol_0_din sc_out sc_lv 1 signal 0 } 
	{ syscontrol_0_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ syscontrol_0_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ syscontrol_0_full_n sc_in sc_logic 1 signal 0 } 
	{ syscontrol_0_write sc_out sc_logic 1 signal 0 } 
	{ syscontrol_2_din sc_out sc_lv 1 signal 2 } 
	{ syscontrol_2_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ syscontrol_2_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ syscontrol_2_full_n sc_in sc_logic 1 signal 2 } 
	{ syscontrol_2_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "syscontrol_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_1", "role": "din" }} , 
 	{ "name": "syscontrol_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "syscontrol_1", "role": "num_data_valid" }} , 
 	{ "name": "syscontrol_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "syscontrol_1", "role": "fifo_cap" }} , 
 	{ "name": "syscontrol_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_1", "role": "full_n" }} , 
 	{ "name": "syscontrol_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_1", "role": "write" }} , 
 	{ "name": "syscontrol_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_0", "role": "din" }} , 
 	{ "name": "syscontrol_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "syscontrol_0", "role": "num_data_valid" }} , 
 	{ "name": "syscontrol_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "syscontrol_0", "role": "fifo_cap" }} , 
 	{ "name": "syscontrol_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_0", "role": "full_n" }} , 
 	{ "name": "syscontrol_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_0", "role": "write" }} , 
 	{ "name": "syscontrol_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_2", "role": "din" }} , 
 	{ "name": "syscontrol_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "syscontrol_2", "role": "num_data_valid" }} , 
 	{ "name": "syscontrol_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "syscontrol_2", "role": "fifo_cap" }} , 
 	{ "name": "syscontrol_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_2", "role": "full_n" }} , 
 	{ "name": "syscontrol_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "SystemControl_Pipeline_VITIS_LOOP_315_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "syscontrol_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "syscontrol_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "syscontrol_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "syscontrol_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "syscontrol_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "syscontrol_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_315_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	SystemControl_Pipeline_VITIS_LOOP_315_4 {
		syscontrol_0 {Type O LastRead -1 FirstWrite 1}
		syscontrol_1 {Type O LastRead -1 FirstWrite 1}
		syscontrol_2 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	syscontrol_0 { ap_fifo {  { syscontrol_0_din fifo_data_in 1 1 }  { syscontrol_0_num_data_valid fifo_status_num_data_valid 0 3 }  { syscontrol_0_fifo_cap fifo_update 0 3 }  { syscontrol_0_full_n fifo_status 0 1 }  { syscontrol_0_write fifo_port_we 1 1 } } }
	syscontrol_1 { ap_fifo {  { syscontrol_1_din fifo_data_in 1 1 }  { syscontrol_1_num_data_valid fifo_status_num_data_valid 0 3 }  { syscontrol_1_fifo_cap fifo_update 0 3 }  { syscontrol_1_full_n fifo_status 0 1 }  { syscontrol_1_write fifo_port_we 1 1 } } }
	syscontrol_2 { ap_fifo {  { syscontrol_2_din fifo_data_in 1 1 }  { syscontrol_2_num_data_valid fifo_status_num_data_valid 0 3 }  { syscontrol_2_fifo_cap fifo_update 0 3 }  { syscontrol_2_full_n fifo_status 0 1 }  { syscontrol_2_write fifo_port_we 1 1 } } }
}
