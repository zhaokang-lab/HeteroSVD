set moduleName receive4DDR_Pipeline_VITIS_LOOP_39_2
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
set C_modelName {receive4DDR_Pipeline_VITIS_LOOP_39_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_temp_1 int 128 regular  }
	{ data_temp_2 int 128 regular  }
	{ norm_rx0_V_data_V int 128 regular {axi_s 0 volatile  { norm_rx0 Data } }  }
	{ norm_rx0_V_keep_V int 16 regular {axi_s 0 volatile  { norm_rx0 Keep } }  }
	{ norm_rx0_V_strb_V int 16 regular {axi_s 0 volatile  { norm_rx0 Strb } }  }
	{ norm_rx0_V_last_V int 1 regular {axi_s 0 volatile  { norm_rx0 Last } }  }
	{ receive_fifo_0 int 128 regular {fifo 1 volatile }  }
	{ data_temp_5_out int 128 regular {pointer 1}  }
	{ data_temp_4_out int 128 regular {pointer 2}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "data_temp_1", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "data_temp_2", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "norm_rx0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "norm_rx0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "norm_rx0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "norm_rx0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_temp_5_out", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_temp_4_out", "interface" : "wire", "bitwidth" : 128, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ norm_rx0_TVALID sc_in sc_logic 1 invld 2 } 
	{ receive_fifo_0_din sc_out sc_lv 128 signal 6 } 
	{ receive_fifo_0_num_data_valid sc_in sc_lv 13 signal 6 } 
	{ receive_fifo_0_fifo_cap sc_in sc_lv 13 signal 6 } 
	{ receive_fifo_0_full_n sc_in sc_logic 1 signal 6 } 
	{ receive_fifo_0_write sc_out sc_logic 1 signal 6 } 
	{ data_temp_1 sc_in sc_lv 128 signal 0 } 
	{ data_temp_2 sc_in sc_lv 128 signal 1 } 
	{ norm_rx0_TDATA sc_in sc_lv 128 signal 2 } 
	{ norm_rx0_TREADY sc_out sc_logic 1 inacc 5 } 
	{ norm_rx0_TKEEP sc_in sc_lv 16 signal 3 } 
	{ norm_rx0_TSTRB sc_in sc_lv 16 signal 4 } 
	{ norm_rx0_TLAST sc_in sc_lv 1 signal 5 } 
	{ data_temp_5_out sc_out sc_lv 128 signal 7 } 
	{ data_temp_5_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ data_temp_4_out_i sc_in sc_lv 128 signal 8 } 
	{ data_temp_4_out_o sc_out sc_lv 128 signal 8 } 
	{ data_temp_4_out_o_ap_vld sc_out sc_logic 1 outvld 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "norm_rx0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "norm_rx0_V_data_V", "role": "default" }} , 
 	{ "name": "receive_fifo_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "din" }} , 
 	{ "name": "receive_fifo_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "num_data_valid" }} , 
 	{ "name": "receive_fifo_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "fifo_cap" }} , 
 	{ "name": "receive_fifo_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "full_n" }} , 
 	{ "name": "receive_fifo_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "write" }} , 
 	{ "name": "data_temp_1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "data_temp_1", "role": "default" }} , 
 	{ "name": "data_temp_2", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "data_temp_2", "role": "default" }} , 
 	{ "name": "norm_rx0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "norm_rx0_V_data_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "norm_rx0_V_last_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "norm_rx0_V_keep_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "norm_rx0_V_strb_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "norm_rx0_V_last_V", "role": "default" }} , 
 	{ "name": "data_temp_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "data_temp_5_out", "role": "default" }} , 
 	{ "name": "data_temp_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_temp_5_out", "role": "ap_vld" }} , 
 	{ "name": "data_temp_4_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "data_temp_4_out", "role": "i" }} , 
 	{ "name": "data_temp_4_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "data_temp_4_out", "role": "o" }} , 
 	{ "name": "data_temp_4_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_temp_4_out", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "receive4DDR_Pipeline_VITIS_LOOP_39_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_temp_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_temp_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "norm_rx0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"BlockSignal" : [
					{"Name" : "norm_rx0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "norm_rx0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0"},
			{"Name" : "norm_rx0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0"},
			{"Name" : "norm_rx0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0"},
			{"Name" : "receive_fifo_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_temp_4_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	receive4DDR_Pipeline_VITIS_LOOP_39_2 {
		data_temp_1 {Type I LastRead 0 FirstWrite -1}
		data_temp_2 {Type I LastRead 0 FirstWrite -1}
		norm_rx0_V_data_V {Type I LastRead 0 FirstWrite -1}
		norm_rx0_V_keep_V {Type I LastRead 0 FirstWrite -1}
		norm_rx0_V_strb_V {Type I LastRead 0 FirstWrite -1}
		norm_rx0_V_last_V {Type I LastRead 0 FirstWrite -1}
		receive_fifo_0 {Type O LastRead -1 FirstWrite 1}
		data_temp_5_out {Type O LastRead -1 FirstWrite 0}
		data_temp_4_out {Type IO LastRead 1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "33", "Max" : "33"}
	, {"Name" : "Interval", "Min" : "33", "Max" : "33"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_temp_1 { ap_none {  { data_temp_1 in_data 0 128 } } }
	data_temp_2 { ap_none {  { data_temp_2 in_data 0 128 } } }
	norm_rx0_V_data_V { axis {  { norm_rx0_TVALID in_vld 0 1 }  { norm_rx0_TDATA in_data 0 128 } } }
	norm_rx0_V_keep_V { axis {  { norm_rx0_TKEEP in_data 0 16 } } }
	norm_rx0_V_strb_V { axis {  { norm_rx0_TSTRB in_data 0 16 } } }
	norm_rx0_V_last_V { axis {  { norm_rx0_TREADY in_acc 1 1 }  { norm_rx0_TLAST in_data 0 1 } } }
	receive_fifo_0 { ap_fifo {  { receive_fifo_0_din fifo_data_in 1 128 }  { receive_fifo_0_num_data_valid fifo_status_num_data_valid 0 13 }  { receive_fifo_0_fifo_cap fifo_update 0 13 }  { receive_fifo_0_full_n fifo_status 0 1 }  { receive_fifo_0_write fifo_port_we 1 1 } } }
	data_temp_5_out { ap_vld {  { data_temp_5_out out_data 1 128 }  { data_temp_5_out_ap_vld out_vld 1 1 } } }
	data_temp_4_out { ap_ovld {  { data_temp_4_out_i in_data 0 128 }  { data_temp_4_out_o out_data 1 128 }  { data_temp_4_out_o_ap_vld out_vld 1 1 } } }
}
