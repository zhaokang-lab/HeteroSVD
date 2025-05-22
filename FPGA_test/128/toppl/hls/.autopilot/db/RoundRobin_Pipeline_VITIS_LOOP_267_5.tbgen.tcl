set moduleName RoundRobin_Pipeline_VITIS_LOOP_267_5
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
set C_modelName {RoundRobin_Pipeline_VITIS_LOOP_267_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ receive_fifo_0 int 128 regular {fifo 0 volatile }  }
	{ receive_fifo_1 int 128 regular {fifo 0 volatile }  }
	{ send_fifo_0 int 128 regular {fifo 1 volatile }  }
	{ send_fifo_1 int 128 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "receive_fifo_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_1", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "send_fifo_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "send_fifo_1", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ receive_fifo_0_dout sc_in sc_lv 128 signal 0 } 
	{ receive_fifo_0_num_data_valid sc_in sc_lv 13 signal 0 } 
	{ receive_fifo_0_fifo_cap sc_in sc_lv 13 signal 0 } 
	{ receive_fifo_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ receive_fifo_0_read sc_out sc_logic 1 signal 0 } 
	{ receive_fifo_1_dout sc_in sc_lv 128 signal 1 } 
	{ receive_fifo_1_num_data_valid sc_in sc_lv 13 signal 1 } 
	{ receive_fifo_1_fifo_cap sc_in sc_lv 13 signal 1 } 
	{ receive_fifo_1_empty_n sc_in sc_logic 1 signal 1 } 
	{ receive_fifo_1_read sc_out sc_logic 1 signal 1 } 
	{ send_fifo_0_din sc_out sc_lv 128 signal 2 } 
	{ send_fifo_0_num_data_valid sc_in sc_lv 10 signal 2 } 
	{ send_fifo_0_fifo_cap sc_in sc_lv 10 signal 2 } 
	{ send_fifo_0_full_n sc_in sc_logic 1 signal 2 } 
	{ send_fifo_0_write sc_out sc_logic 1 signal 2 } 
	{ send_fifo_1_din sc_out sc_lv 128 signal 3 } 
	{ send_fifo_1_num_data_valid sc_in sc_lv 10 signal 3 } 
	{ send_fifo_1_fifo_cap sc_in sc_lv 10 signal 3 } 
	{ send_fifo_1_full_n sc_in sc_logic 1 signal 3 } 
	{ send_fifo_1_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "receive_fifo_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "dout" }} , 
 	{ "name": "receive_fifo_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "num_data_valid" }} , 
 	{ "name": "receive_fifo_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "fifo_cap" }} , 
 	{ "name": "receive_fifo_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "empty_n" }} , 
 	{ "name": "receive_fifo_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "read" }} , 
 	{ "name": "receive_fifo_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_1", "role": "dout" }} , 
 	{ "name": "receive_fifo_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "receive_fifo_1", "role": "num_data_valid" }} , 
 	{ "name": "receive_fifo_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "receive_fifo_1", "role": "fifo_cap" }} , 
 	{ "name": "receive_fifo_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_1", "role": "empty_n" }} , 
 	{ "name": "receive_fifo_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_1", "role": "read" }} , 
 	{ "name": "send_fifo_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_0", "role": "din" }} , 
 	{ "name": "send_fifo_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "send_fifo_0", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "send_fifo_0", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_0", "role": "full_n" }} , 
 	{ "name": "send_fifo_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_0", "role": "write" }} , 
 	{ "name": "send_fifo_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_1", "role": "din" }} , 
 	{ "name": "send_fifo_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "send_fifo_1", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "send_fifo_1", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_1", "role": "full_n" }} , 
 	{ "name": "send_fifo_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_267_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1539", "EstimateLatencyMax" : "1539",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "receive_fifo_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_267_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	RoundRobin_Pipeline_VITIS_LOOP_267_5 {
		receive_fifo_0 {Type I LastRead 1 FirstWrite -1}
		receive_fifo_1 {Type I LastRead 1 FirstWrite -1}
		send_fifo_0 {Type O LastRead -1 FirstWrite 2}
		send_fifo_1 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1539", "Max" : "1539"}
	, {"Name" : "Interval", "Min" : "1539", "Max" : "1539"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	receive_fifo_0 { ap_fifo {  { receive_fifo_0_dout fifo_data_in 0 128 }  { receive_fifo_0_num_data_valid fifo_status_num_data_valid 0 13 }  { receive_fifo_0_fifo_cap fifo_update 0 13 }  { receive_fifo_0_empty_n fifo_status 0 1 }  { receive_fifo_0_read fifo_port_we 1 1 } } }
	receive_fifo_1 { ap_fifo {  { receive_fifo_1_dout fifo_data_in 0 128 }  { receive_fifo_1_num_data_valid fifo_status_num_data_valid 0 13 }  { receive_fifo_1_fifo_cap fifo_update 0 13 }  { receive_fifo_1_empty_n fifo_status 0 1 }  { receive_fifo_1_read fifo_port_we 1 1 } } }
	send_fifo_0 { ap_fifo {  { send_fifo_0_din fifo_data_in 1 128 }  { send_fifo_0_num_data_valid fifo_status_num_data_valid 0 10 }  { send_fifo_0_fifo_cap fifo_update 0 10 }  { send_fifo_0_full_n fifo_status 0 1 }  { send_fifo_0_write fifo_port_we 1 1 } } }
	send_fifo_1 { ap_fifo {  { send_fifo_1_din fifo_data_in 1 128 }  { send_fifo_1_num_data_valid fifo_status_num_data_valid 0 10 }  { send_fifo_1_fifo_cap fifo_update 0 10 }  { send_fifo_1_full_n fifo_status 0 1 }  { send_fifo_1_write fifo_port_we 1 1 } } }
}
