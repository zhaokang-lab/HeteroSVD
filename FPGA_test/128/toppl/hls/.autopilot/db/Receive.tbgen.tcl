set moduleName Receive
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
set C_modelName {Receive}
set C_modelType { void 0 }
set C_modelArgList {
	{ syscontrol_2 int 1 regular {fifo 0 volatile }  }
	{ convSet_0 int 32 regular {fifo 1 volatile }  }
	{ convSet_1 int 32 regular {fifo 1 volatile }  }
	{ receive_fifo_0 int 128 regular {fifo 1 volatile }  }
	{ receive_fifo_1 int 128 regular {fifo 1 volatile }  }
	{ sweep_rx0_0_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx0_0 Data } }  }
	{ sweep_rx0_0_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx0_0 Keep } }  }
	{ sweep_rx0_0_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx0_0 Strb } }  }
	{ sweep_rx0_0_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx0_0 Last } }  }
	{ sweep_rx0_1_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx0_1 Data } }  }
	{ sweep_rx0_1_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx0_1 Keep } }  }
	{ sweep_rx0_1_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx0_1 Strb } }  }
	{ sweep_rx0_1_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx0_1 Last } }  }
	{ norm_rx0_V_data_V int 128 regular {axi_s 0 volatile  { norm_rx0 Data } }  }
	{ norm_rx0_V_keep_V int 16 regular {axi_s 0 volatile  { norm_rx0 Keep } }  }
	{ norm_rx0_V_strb_V int 16 regular {axi_s 0 volatile  { norm_rx0 Strb } }  }
	{ norm_rx0_V_last_V int 1 regular {axi_s 0 volatile  { norm_rx0 Last } }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "syscontrol_2", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "convSet_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "convSet_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "receive_fifo_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "receive_fifo_1", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx0_0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_1_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_1_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_1_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "norm_rx0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "norm_rx0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "norm_rx0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "norm_rx0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ syscontrol_2_dout sc_in sc_lv 1 signal 0 } 
	{ syscontrol_2_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ syscontrol_2_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ syscontrol_2_empty_n sc_in sc_logic 1 signal 0 } 
	{ syscontrol_2_read sc_out sc_logic 1 signal 0 } 
	{ convSet_0_din sc_out sc_lv 32 signal 1 } 
	{ convSet_0_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ convSet_0_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ convSet_0_full_n sc_in sc_logic 1 signal 1 } 
	{ convSet_0_write sc_out sc_logic 1 signal 1 } 
	{ convSet_1_din sc_out sc_lv 32 signal 2 } 
	{ convSet_1_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ convSet_1_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ convSet_1_full_n sc_in sc_logic 1 signal 2 } 
	{ convSet_1_write sc_out sc_logic 1 signal 2 } 
	{ receive_fifo_0_din sc_out sc_lv 128 signal 3 } 
	{ receive_fifo_0_num_data_valid sc_in sc_lv 13 signal 3 } 
	{ receive_fifo_0_fifo_cap sc_in sc_lv 13 signal 3 } 
	{ receive_fifo_0_full_n sc_in sc_logic 1 signal 3 } 
	{ receive_fifo_0_write sc_out sc_logic 1 signal 3 } 
	{ receive_fifo_1_din sc_out sc_lv 128 signal 4 } 
	{ receive_fifo_1_num_data_valid sc_in sc_lv 13 signal 4 } 
	{ receive_fifo_1_fifo_cap sc_in sc_lv 13 signal 4 } 
	{ receive_fifo_1_full_n sc_in sc_logic 1 signal 4 } 
	{ receive_fifo_1_write sc_out sc_logic 1 signal 4 } 
	{ sweep_rx0_0_TDATA sc_in sc_lv 128 signal 5 } 
	{ sweep_rx0_0_TVALID sc_in sc_logic 1 invld 8 } 
	{ sweep_rx0_0_TREADY sc_out sc_logic 1 inacc 8 } 
	{ sweep_rx0_0_TKEEP sc_in sc_lv 16 signal 6 } 
	{ sweep_rx0_0_TSTRB sc_in sc_lv 16 signal 7 } 
	{ sweep_rx0_0_TLAST sc_in sc_lv 1 signal 8 } 
	{ sweep_rx0_1_TDATA sc_in sc_lv 128 signal 9 } 
	{ sweep_rx0_1_TVALID sc_in sc_logic 1 invld 12 } 
	{ sweep_rx0_1_TREADY sc_out sc_logic 1 inacc 12 } 
	{ sweep_rx0_1_TKEEP sc_in sc_lv 16 signal 10 } 
	{ sweep_rx0_1_TSTRB sc_in sc_lv 16 signal 11 } 
	{ sweep_rx0_1_TLAST sc_in sc_lv 1 signal 12 } 
	{ norm_rx0_TDATA sc_in sc_lv 128 signal 13 } 
	{ norm_rx0_TVALID sc_in sc_logic 1 invld 16 } 
	{ norm_rx0_TREADY sc_out sc_logic 1 inacc 16 } 
	{ norm_rx0_TKEEP sc_in sc_lv 16 signal 14 } 
	{ norm_rx0_TSTRB sc_in sc_lv 16 signal 15 } 
	{ norm_rx0_TLAST sc_in sc_lv 1 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "syscontrol_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_2", "role": "dout" }} , 
 	{ "name": "syscontrol_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "syscontrol_2", "role": "num_data_valid" }} , 
 	{ "name": "syscontrol_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "syscontrol_2", "role": "fifo_cap" }} , 
 	{ "name": "syscontrol_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_2", "role": "empty_n" }} , 
 	{ "name": "syscontrol_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_2", "role": "read" }} , 
 	{ "name": "convSet_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_0", "role": "din" }} , 
 	{ "name": "convSet_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_0", "role": "num_data_valid" }} , 
 	{ "name": "convSet_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_0", "role": "fifo_cap" }} , 
 	{ "name": "convSet_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_0", "role": "full_n" }} , 
 	{ "name": "convSet_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_0", "role": "write" }} , 
 	{ "name": "convSet_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_1", "role": "din" }} , 
 	{ "name": "convSet_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_1", "role": "num_data_valid" }} , 
 	{ "name": "convSet_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_1", "role": "fifo_cap" }} , 
 	{ "name": "convSet_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_1", "role": "full_n" }} , 
 	{ "name": "convSet_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_1", "role": "write" }} , 
 	{ "name": "receive_fifo_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "din" }} , 
 	{ "name": "receive_fifo_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "num_data_valid" }} , 
 	{ "name": "receive_fifo_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "fifo_cap" }} , 
 	{ "name": "receive_fifo_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "full_n" }} , 
 	{ "name": "receive_fifo_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "write" }} , 
 	{ "name": "receive_fifo_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_1", "role": "din" }} , 
 	{ "name": "receive_fifo_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "receive_fifo_1", "role": "num_data_valid" }} , 
 	{ "name": "receive_fifo_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "receive_fifo_1", "role": "fifo_cap" }} , 
 	{ "name": "receive_fifo_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_1", "role": "full_n" }} , 
 	{ "name": "receive_fifo_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_1", "role": "write" }} , 
 	{ "name": "sweep_rx0_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx0_0_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx0_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx0_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx0_0_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx0_0_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx0_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx0_1_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx0_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx0_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx0_1_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx0_1_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx0_1_V_last_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "norm_rx0_V_data_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "norm_rx0_V_last_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "norm_rx0_V_last_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "norm_rx0_V_keep_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "norm_rx0_V_strb_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "norm_rx0_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "23", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "Receive",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "syscontrol_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "syscontrol_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "convSet_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "convSet_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "convSet_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "convSet_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "receive_fifo_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4096", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "receive_fifo_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "23", "SubInstance" : "grp_receive4DDR_fu_128", "Port" : "receive_fifo_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "receive_fifo_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4096", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "receive_fifo_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx0_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "sweep_rx0_0_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx0_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "sweep_rx0_0_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx0_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "sweep_rx0_0_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx0_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "sweep_rx0_0_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx0_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "sweep_rx0_1_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx0_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "sweep_rx0_1_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx0_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "sweep_rx0_1_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx0_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "sweep_rx0_1_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "norm_rx0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_receive4DDR_fu_128", "Port" : "norm_rx0_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "norm_rx0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_receive4DDR_fu_128", "Port" : "norm_rx0_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "norm_rx0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_receive4DDR_fu_128", "Port" : "norm_rx0_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "norm_rx0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_receive4DDR_fu_128", "Port" : "norm_rx0_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_216_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_188_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "dataflow_parent_loop_proc10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40564", "EstimateLatencyMax" : "40564",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0"}],
		"Port" : [
			{"Name" : "receive_fifo_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "receive_fifo_0"}]},
			{"Name" : "sweep_rx0_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "sweep_rx0_0_V_data_V"}]},
			{"Name" : "sweep_rx0_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "sweep_rx0_0_V_keep_V"}]},
			{"Name" : "sweep_rx0_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "sweep_rx0_0_V_strb_V"}]},
			{"Name" : "sweep_rx0_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "sweep_rx0_0_V_last_V"}]},
			{"Name" : "receive_fifo_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "receive_fifo_1"}]},
			{"Name" : "sweep_rx0_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "sweep_rx0_1_V_data_V"}]},
			{"Name" : "sweep_rx0_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "sweep_rx0_1_V_keep_V"}]},
			{"Name" : "sweep_rx0_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "sweep_rx0_1_V_strb_V"}]},
			{"Name" : "sweep_rx0_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "sweep_rx0_1_V_last_V"}]},
			{"Name" : "convSet_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "convSet_0"}]},
			{"Name" : "convSet_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "convSet_1"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_220_2", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "has_continue" : "1"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Parent" : "1", "Child" : ["3", "9", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_220_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "340", "EstimateLatencyMax" : "340",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "receive4AIE_1_U0"},
			{"ID" : "9", "Name" : "receive4AIE_U0"}],
		"OutputProcess" : [
			{"ID" : "16", "Name" : "Block_newFuncRoot_proc_proc11_U0"},
			{"ID" : "18", "Name" : "Block_newFuncRoot_proc_proc13_U0"}],
		"Port" : [
			{"Name" : "receive_fifo_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "receive4AIE_1_U0", "Port" : "receive_fifo_0"}]},
			{"Name" : "sweep_rx0_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx0_0_V_data_V"}]},
			{"Name" : "sweep_rx0_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx0_0_V_keep_V"}]},
			{"Name" : "sweep_rx0_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx0_0_V_strb_V"}]},
			{"Name" : "sweep_rx0_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx0_0_V_last_V"}]},
			{"Name" : "receive_fifo_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "receive4AIE_U0", "Port" : "receive_fifo_1"}]},
			{"Name" : "sweep_rx0_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx0_1_V_data_V"}]},
			{"Name" : "sweep_rx0_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx0_1_V_keep_V"}]},
			{"Name" : "sweep_rx0_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx0_1_V_strb_V"}]},
			{"Name" : "sweep_rx0_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx0_1_V_last_V"}]},
			{"Name" : "convSet_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "Block_newFuncRoot_proc_proc11_U0", "Port" : "convSet_0"}]},
			{"Name" : "convSet_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "Block_newFuncRoot_proc_proc13_U0", "Port" : "convSet_1"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0", "Parent" : "2", "Child" : ["4", "6", "7", "8"],
		"CDFG" : "receive4AIE_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "337", "EstimateLatencyMax" : "337",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["15"], "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx0_0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_0_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_0_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_0_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_0_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "4", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0.grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "3", "Child" : ["5"],
		"CDFG" : "receive4AIE_1_Pipeline_VITIS_LOOP_76_2",
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
			{"Name" : "data_temp_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_temp_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "sweep_rx0_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx0_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_rx0_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0"},
			{"Name" : "sweep_rx0_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0"},
			{"Name" : "sweep_rx0_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0"},
			{"Name" : "receive_fifo_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_temp_12_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0.grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0.fptrunc_64ns_32_1_no_dsp_1_U153", "Parent" : "3"},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0.fpext_32ns_64_1_no_dsp_1_U154", "Parent" : "3"},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0.fpext_32ns_64_1_no_dsp_1_U155", "Parent" : "3"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0", "Parent" : "2", "Child" : ["10", "12", "13", "14"],
		"CDFG" : "receive4AIE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "337", "EstimateLatencyMax" : "337",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["17"], "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx0_1_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_1_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_1_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_1_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_1_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0.grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "9", "Child" : ["11"],
		"CDFG" : "receive4AIE_Pipeline_VITIS_LOOP_76_2",
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
			{"Name" : "data_temp_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_temp_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "sweep_rx0_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx0_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_rx0_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1"},
			{"Name" : "sweep_rx0_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1"},
			{"Name" : "sweep_rx0_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1"},
			{"Name" : "receive_fifo_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_temp_20_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0.grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0.fptrunc_64ns_32_1_no_dsp_1_U171", "Parent" : "9"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0.fpext_32ns_64_1_no_dsp_1_U172", "Parent" : "9"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0.fpext_32ns_64_1_no_dsp_1_U173", "Parent" : "9"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc_U0", "Parent" : "2",
		"CDFG" : "Block_newFuncRoot_proc_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv0", "Type" : "None", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc11_U0", "Parent" : "2",
		"CDFG" : "Block_newFuncRoot_proc_proc11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "convSet_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "convSet_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc12_U0", "Parent" : "2",
		"CDFG" : "Block_newFuncRoot_proc_proc12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv1", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc13_U0", "Parent" : "2",
		"CDFG" : "Block_newFuncRoot_proc_proc13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "convSet_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "convSet_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.conv0_channel_U", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.conv1_channel_U", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.empty_92_U", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.empty_U", "Parent" : "2"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_receive4DDR_fu_128", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "receive4DDR",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "313", "EstimateLatencyMax" : "313",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Port" : "receive_fifo_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "norm_rx0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"BlockSignal" : [
					{"Name" : "norm_rx0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Port" : "norm_rx0_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "norm_rx0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Port" : "norm_rx0_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "norm_rx0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Port" : "norm_rx0_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "norm_rx0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Port" : "norm_rx0_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_receive4DDR_fu_128.grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Parent" : "23", "Child" : ["25"],
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
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_receive4DDR_fu_128.grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_sweep_rx0_0_V_data_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_sweep_rx0_0_V_keep_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_sweep_rx0_0_V_strb_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_sweep_rx0_0_V_last_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_sweep_rx0_1_V_data_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_sweep_rx0_1_V_keep_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_sweep_rx0_1_V_strb_V_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_sweep_rx0_1_V_last_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_norm_rx0_V_data_V_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_norm_rx0_V_keep_V_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_norm_rx0_V_strb_V_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_norm_rx0_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Receive {
		syscontrol_2 {Type I LastRead 1 FirstWrite -1}
		convSet_0 {Type O LastRead -1 FirstWrite 0}
		convSet_1 {Type O LastRead -1 FirstWrite 0}
		receive_fifo_0 {Type O LastRead -1 FirstWrite 1}
		receive_fifo_1 {Type O LastRead -1 FirstWrite 1}
		sweep_rx0_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_0_V_last_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_1_V_last_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_data_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_last_V {Type I LastRead 4 FirstWrite -1}}
	dataflow_parent_loop_proc10 {
		receive_fifo_0 {Type O LastRead -1 FirstWrite 1}
		sweep_rx0_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_0_V_last_V {Type I LastRead 4 FirstWrite -1}
		receive_fifo_1 {Type O LastRead -1 FirstWrite 1}
		sweep_rx0_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_1_V_last_V {Type I LastRead 4 FirstWrite -1}
		convSet_0 {Type O LastRead -1 FirstWrite 0}
		convSet_1 {Type O LastRead -1 FirstWrite 0}}
	dataflow_in_loop_VITIS_LOOP_220_2_1 {
		receive_fifo_0 {Type O LastRead -1 FirstWrite 1}
		sweep_rx0_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_0_V_last_V {Type I LastRead 4 FirstWrite -1}
		receive_fifo_1 {Type O LastRead -1 FirstWrite 1}
		sweep_rx0_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_1_V_last_V {Type I LastRead 4 FirstWrite -1}
		convSet_0 {Type O LastRead -1 FirstWrite 0}
		convSet_1 {Type O LastRead -1 FirstWrite 0}}
	receive4AIE_1 {
		return_r {Type O LastRead -1 FirstWrite 1}
		receive_fifo_0 {Type O LastRead -1 FirstWrite 1}
		sweep_rx0_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_0_V_last_V {Type I LastRead 4 FirstWrite -1}}
	receive4AIE_1_Pipeline_VITIS_LOOP_76_2 {
		data_temp_9 {Type I LastRead 0 FirstWrite -1}
		data_temp_10 {Type I LastRead 0 FirstWrite -1}
		sweep_rx0_0_V_data_V {Type I LastRead 0 FirstWrite -1}
		sweep_rx0_0_V_keep_V {Type I LastRead 0 FirstWrite -1}
		sweep_rx0_0_V_strb_V {Type I LastRead 0 FirstWrite -1}
		sweep_rx0_0_V_last_V {Type I LastRead 0 FirstWrite -1}
		receive_fifo_0 {Type O LastRead -1 FirstWrite 1}
		data_temp_13_out {Type O LastRead -1 FirstWrite 0}
		data_temp_12_out {Type IO LastRead 1 FirstWrite 0}}
	receive4AIE {
		return_r {Type O LastRead -1 FirstWrite 1}
		receive_fifo_1 {Type O LastRead -1 FirstWrite 1}
		sweep_rx0_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_1_V_last_V {Type I LastRead 4 FirstWrite -1}}
	receive4AIE_Pipeline_VITIS_LOOP_76_2 {
		data_temp_17 {Type I LastRead 0 FirstWrite -1}
		data_temp_18 {Type I LastRead 0 FirstWrite -1}
		sweep_rx0_1_V_data_V {Type I LastRead 0 FirstWrite -1}
		sweep_rx0_1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		sweep_rx0_1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		sweep_rx0_1_V_last_V {Type I LastRead 0 FirstWrite -1}
		receive_fifo_1 {Type O LastRead -1 FirstWrite 1}
		data_temp_21_out {Type O LastRead -1 FirstWrite 0}
		data_temp_20_out {Type IO LastRead 1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc {
		conv0 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 1}}
	Block_newFuncRoot_proc_proc11 {
		convSet_0 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	Block_newFuncRoot_proc_proc12 {
		conv1 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 1}}
	Block_newFuncRoot_proc_proc13 {
		convSet_1 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	receive4DDR {
		receive_fifo_0 {Type O LastRead -1 FirstWrite 1}
		norm_rx0_V_data_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_last_V {Type I LastRead 4 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	syscontrol_2 { ap_fifo {  { syscontrol_2_dout fifo_data_in 0 1 }  { syscontrol_2_num_data_valid fifo_status_num_data_valid 0 3 }  { syscontrol_2_fifo_cap fifo_update 0 3 }  { syscontrol_2_empty_n fifo_status 0 1 }  { syscontrol_2_read fifo_port_we 1 1 } } }
	convSet_0 { ap_fifo {  { convSet_0_din fifo_data_in 1 32 }  { convSet_0_num_data_valid fifo_status_num_data_valid 0 3 }  { convSet_0_fifo_cap fifo_update 0 3 }  { convSet_0_full_n fifo_status 0 1 }  { convSet_0_write fifo_port_we 1 1 } } }
	convSet_1 { ap_fifo {  { convSet_1_din fifo_data_in 1 32 }  { convSet_1_num_data_valid fifo_status_num_data_valid 0 3 }  { convSet_1_fifo_cap fifo_update 0 3 }  { convSet_1_full_n fifo_status 0 1 }  { convSet_1_write fifo_port_we 1 1 } } }
	receive_fifo_0 { ap_fifo {  { receive_fifo_0_din fifo_data_in 1 128 }  { receive_fifo_0_num_data_valid fifo_status_num_data_valid 0 13 }  { receive_fifo_0_fifo_cap fifo_update 0 13 }  { receive_fifo_0_full_n fifo_status 0 1 }  { receive_fifo_0_write fifo_port_we 1 1 } } }
	receive_fifo_1 { ap_fifo {  { receive_fifo_1_din fifo_data_in 1 128 }  { receive_fifo_1_num_data_valid fifo_status_num_data_valid 0 13 }  { receive_fifo_1_fifo_cap fifo_update 0 13 }  { receive_fifo_1_full_n fifo_status 0 1 }  { receive_fifo_1_write fifo_port_we 1 1 } } }
	sweep_rx0_0_V_data_V { axis {  { sweep_rx0_0_TDATA in_data 0 128 } } }
	sweep_rx0_0_V_keep_V { axis {  { sweep_rx0_0_TKEEP in_data 0 16 } } }
	sweep_rx0_0_V_strb_V { axis {  { sweep_rx0_0_TSTRB in_data 0 16 } } }
	sweep_rx0_0_V_last_V { axis {  { sweep_rx0_0_TVALID in_vld 0 1 }  { sweep_rx0_0_TREADY in_acc 1 1 }  { sweep_rx0_0_TLAST in_data 0 1 } } }
	sweep_rx0_1_V_data_V { axis {  { sweep_rx0_1_TDATA in_data 0 128 } } }
	sweep_rx0_1_V_keep_V { axis {  { sweep_rx0_1_TKEEP in_data 0 16 } } }
	sweep_rx0_1_V_strb_V { axis {  { sweep_rx0_1_TSTRB in_data 0 16 } } }
	sweep_rx0_1_V_last_V { axis {  { sweep_rx0_1_TVALID in_vld 0 1 }  { sweep_rx0_1_TREADY in_acc 1 1 }  { sweep_rx0_1_TLAST in_data 0 1 } } }
	norm_rx0_V_data_V { axis {  { norm_rx0_TDATA in_data 0 128 } } }
	norm_rx0_V_keep_V { axis {  { norm_rx0_TKEEP in_data 0 16 } } }
	norm_rx0_V_strb_V { axis {  { norm_rx0_TSTRB in_data 0 16 } } }
	norm_rx0_V_last_V { axis {  { norm_rx0_TVALID in_vld 0 1 }  { norm_rx0_TREADY in_acc 1 1 }  { norm_rx0_TLAST in_data 0 1 } } }
}
