set moduleName dataflow_in_loop_VITIS_LOOP_220_2_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {dataflow_in_loop_VITIS_LOOP_220_2.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ receive_fifo_0 int 128 regular {fifo 1 volatile }  }
	{ sweep_rx0_0_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx0_0 Data } }  }
	{ sweep_rx0_0_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx0_0 Keep } }  }
	{ sweep_rx0_0_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx0_0 Strb } }  }
	{ sweep_rx0_0_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx0_0 Last } }  }
	{ receive_fifo_1 int 128 regular {fifo 1 volatile }  }
	{ sweep_rx0_1_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx0_1 Data } }  }
	{ sweep_rx0_1_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx0_1 Keep } }  }
	{ sweep_rx0_1_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx0_1 Strb } }  }
	{ sweep_rx0_1_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx0_1 Last } }  }
	{ convSet_0 int 32 regular {fifo 1 volatile }  }
	{ convSet_1 int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "receive_fifo_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx0_0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_1", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx0_1_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_1_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_1_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "convSet_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "convSet_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ receive_fifo_0_din sc_out sc_lv 128 signal 0 } 
	{ receive_fifo_0_full_n sc_in sc_logic 1 signal 0 } 
	{ receive_fifo_0_write sc_out sc_logic 1 signal 0 } 
	{ sweep_rx0_0_TDATA sc_in sc_lv 128 signal 1 } 
	{ sweep_rx0_0_TKEEP sc_in sc_lv 16 signal 2 } 
	{ sweep_rx0_0_TSTRB sc_in sc_lv 16 signal 3 } 
	{ sweep_rx0_0_TLAST sc_in sc_lv 1 signal 4 } 
	{ receive_fifo_1_din sc_out sc_lv 128 signal 5 } 
	{ receive_fifo_1_full_n sc_in sc_logic 1 signal 5 } 
	{ receive_fifo_1_write sc_out sc_logic 1 signal 5 } 
	{ sweep_rx0_1_TDATA sc_in sc_lv 128 signal 6 } 
	{ sweep_rx0_1_TKEEP sc_in sc_lv 16 signal 7 } 
	{ sweep_rx0_1_TSTRB sc_in sc_lv 16 signal 8 } 
	{ sweep_rx0_1_TLAST sc_in sc_lv 1 signal 9 } 
	{ convSet_0_din sc_out sc_lv 32 signal 10 } 
	{ convSet_0_full_n sc_in sc_logic 1 signal 10 } 
	{ convSet_0_write sc_out sc_logic 1 signal 10 } 
	{ convSet_1_din sc_out sc_lv 32 signal 11 } 
	{ convSet_1_full_n sc_in sc_logic 1 signal 11 } 
	{ convSet_1_write sc_out sc_logic 1 signal 11 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ sweep_rx0_0_TVALID sc_in sc_logic 1 invld 4 } 
	{ sweep_rx0_0_TREADY sc_out sc_logic 1 inacc 4 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ sweep_rx0_1_TVALID sc_in sc_logic 1 invld 9 } 
	{ sweep_rx0_1_TREADY sc_out sc_logic 1 inacc 9 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "receive_fifo_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "din" }} , 
 	{ "name": "receive_fifo_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "full_n" }} , 
 	{ "name": "receive_fifo_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_0", "role": "write" }} , 
 	{ "name": "sweep_rx0_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx0_0_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx0_0_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx0_0_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx0_0_V_last_V", "role": "default" }} , 
 	{ "name": "receive_fifo_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_1", "role": "din" }} , 
 	{ "name": "receive_fifo_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_1", "role": "full_n" }} , 
 	{ "name": "receive_fifo_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_1", "role": "write" }} , 
 	{ "name": "sweep_rx0_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx0_1_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx0_1_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx0_1_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx0_1_V_last_V", "role": "default" }} , 
 	{ "name": "convSet_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_0", "role": "din" }} , 
 	{ "name": "convSet_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_0", "role": "full_n" }} , 
 	{ "name": "convSet_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_0", "role": "write" }} , 
 	{ "name": "convSet_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_1", "role": "din" }} , 
 	{ "name": "convSet_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_1", "role": "full_n" }} , 
 	{ "name": "convSet_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_1", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "sweep_rx0_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx0_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx0_0_V_last_V", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "sweep_rx0_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx0_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx0_1_V_last_V", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "7", "13", "14", "15", "16", "17", "18", "19", "20"],
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
			{"ID" : "1", "Name" : "receive4AIE_1_U0"},
			{"ID" : "7", "Name" : "receive4AIE_U0"}],
		"OutputProcess" : [
			{"ID" : "14", "Name" : "Block_newFuncRoot_proc_proc11_U0"},
			{"ID" : "16", "Name" : "Block_newFuncRoot_proc_proc13_U0"}],
		"Port" : [
			{"Name" : "receive_fifo_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "receive4AIE_1_U0", "Port" : "receive_fifo_0"}]},
			{"Name" : "sweep_rx0_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx0_0_V_data_V"}]},
			{"Name" : "sweep_rx0_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx0_0_V_keep_V"}]},
			{"Name" : "sweep_rx0_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx0_0_V_strb_V"}]},
			{"Name" : "sweep_rx0_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx0_0_V_last_V"}]},
			{"Name" : "receive_fifo_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "receive4AIE_U0", "Port" : "receive_fifo_1"}]},
			{"Name" : "sweep_rx0_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx0_1_V_data_V"}]},
			{"Name" : "sweep_rx0_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx0_1_V_keep_V"}]},
			{"Name" : "sweep_rx0_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx0_1_V_strb_V"}]},
			{"Name" : "sweep_rx0_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx0_1_V_last_V"}]},
			{"Name" : "convSet_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Block_newFuncRoot_proc_proc11_U0", "Port" : "convSet_0"}]},
			{"Name" : "convSet_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "Block_newFuncRoot_proc_proc13_U0", "Port" : "convSet_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.receive4AIE_1_U0", "Parent" : "0", "Child" : ["2", "4", "5", "6"],
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
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx0_0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_0_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_0_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_0_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_0_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_1_U0.grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "1", "Child" : ["3"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.receive4AIE_1_U0.grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_1_U0.fptrunc_64ns_32_1_no_dsp_1_U153", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_1_U0.fpext_32ns_64_1_no_dsp_1_U154", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_1_U0.fpext_32ns_64_1_no_dsp_1_U155", "Parent" : "1"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.receive4AIE_U0", "Parent" : "0", "Child" : ["8", "10", "11", "12"],
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
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["15"], "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx0_1_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_1_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_1_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_1_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_1_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_U0.grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "7", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.receive4AIE_U0.grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_U0.fptrunc_64ns_32_1_no_dsp_1_U171", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_U0.fpext_32ns_64_1_no_dsp_1_U172", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_U0.fpext_32ns_64_1_no_dsp_1_U173", "Parent" : "7"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_newFuncRoot_proc_proc_U0", "Parent" : "0",
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
			{"Name" : "conv0", "Type" : "None", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_newFuncRoot_proc_proc11_U0", "Parent" : "0",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_newFuncRoot_proc_proc12_U0", "Parent" : "0",
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
			{"Name" : "conv1", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_newFuncRoot_proc_proc13_U0", "Parent" : "0",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv0_channel_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_channel_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_92_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "340", "Max" : "340"}
	, {"Name" : "Interval", "Min" : "338", "Max" : "338"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	receive_fifo_0 { ap_fifo {  { receive_fifo_0_din fifo_data_in 1 128 }  { receive_fifo_0_full_n fifo_status 0 1 }  { receive_fifo_0_write fifo_port_we 1 1 } } }
	sweep_rx0_0_V_data_V { axis {  { sweep_rx0_0_TDATA in_data 0 128 } } }
	sweep_rx0_0_V_keep_V { axis {  { sweep_rx0_0_TKEEP in_data 0 16 } } }
	sweep_rx0_0_V_strb_V { axis {  { sweep_rx0_0_TSTRB in_data 0 16 } } }
	sweep_rx0_0_V_last_V { axis {  { sweep_rx0_0_TLAST in_data 0 1 }  { sweep_rx0_0_TVALID in_vld 0 1 }  { sweep_rx0_0_TREADY in_acc 1 1 } } }
	receive_fifo_1 { ap_fifo {  { receive_fifo_1_din fifo_data_in 1 128 }  { receive_fifo_1_full_n fifo_status 0 1 }  { receive_fifo_1_write fifo_port_we 1 1 } } }
	sweep_rx0_1_V_data_V { axis {  { sweep_rx0_1_TDATA in_data 0 128 } } }
	sweep_rx0_1_V_keep_V { axis {  { sweep_rx0_1_TKEEP in_data 0 16 } } }
	sweep_rx0_1_V_strb_V { axis {  { sweep_rx0_1_TSTRB in_data 0 16 } } }
	sweep_rx0_1_V_last_V { axis {  { sweep_rx0_1_TLAST in_data 0 1 }  { sweep_rx0_1_TVALID in_vld 0 1 }  { sweep_rx0_1_TREADY in_acc 1 1 } } }
	convSet_0 { ap_fifo {  { convSet_0_din fifo_data_in 1 32 }  { convSet_0_full_n fifo_status 0 1 }  { convSet_0_write fifo_port_we 1 1 } } }
	convSet_1 { ap_fifo {  { convSet_1_din fifo_data_in 1 32 }  { convSet_1_full_n fifo_status 0 1 }  { convSet_1_write fifo_port_we 1 1 } } }
}
