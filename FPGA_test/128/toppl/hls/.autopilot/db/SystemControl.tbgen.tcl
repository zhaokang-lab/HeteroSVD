set moduleName SystemControl
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
set C_modelName {SystemControl}
set C_modelType { void 0 }
set C_modelArgList {
	{ ITER int 32 regular  }
	{ gmem3 int 32 regular {axi_master 1}  }
	{ ConvArray int 64 regular  }
	{ syscontrol_0 int 1 regular {fifo 1 volatile }  }
	{ syscontrol_1 int 1 regular {fifo 1 volatile }  }
	{ syscontrol_2 int 1 regular {fifo 1 volatile }  }
	{ convSet_0 int 32 regular {fifo 0 volatile }  }
	{ convSet_1 int 32 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "ITER", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gmem3", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "ConvArray","offset": { "type": "dynamic","port_name": "ConvArray","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "ConvArray", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "syscontrol_0", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "syscontrol_1", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "syscontrol_2", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "convSet_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "convSet_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 83
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ ITER sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem3_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem3_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem3_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem3_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem3_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem3_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem3_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem3_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem3_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem3_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem3_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem3_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem3_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem3_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem3_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem3_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem3_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem3_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem3_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem3_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem3_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem3_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem3_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem3_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem3_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem3_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem3_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem3_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem3_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem3_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem3_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem3_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem3_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem3_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem3_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem3_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem3_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem3_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem3_RFIFONUM sc_in sc_lv 11 signal 1 } 
	{ m_axi_gmem3_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem3_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem3_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem3_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem3_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem3_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem3_BUSER sc_in sc_lv 1 signal 1 } 
	{ ConvArray sc_in sc_lv 64 signal 2 } 
	{ syscontrol_0_din sc_out sc_lv 1 signal 3 } 
	{ syscontrol_0_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ syscontrol_0_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ syscontrol_0_full_n sc_in sc_logic 1 signal 3 } 
	{ syscontrol_0_write sc_out sc_logic 1 signal 3 } 
	{ syscontrol_1_din sc_out sc_lv 1 signal 4 } 
	{ syscontrol_1_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ syscontrol_1_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ syscontrol_1_full_n sc_in sc_logic 1 signal 4 } 
	{ syscontrol_1_write sc_out sc_logic 1 signal 4 } 
	{ syscontrol_2_din sc_out sc_lv 1 signal 5 } 
	{ syscontrol_2_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ syscontrol_2_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ syscontrol_2_full_n sc_in sc_logic 1 signal 5 } 
	{ syscontrol_2_write sc_out sc_logic 1 signal 5 } 
	{ convSet_0_dout sc_in sc_lv 32 signal 6 } 
	{ convSet_0_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ convSet_0_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ convSet_0_empty_n sc_in sc_logic 1 signal 6 } 
	{ convSet_0_read sc_out sc_logic 1 signal 6 } 
	{ convSet_1_dout sc_in sc_lv 32 signal 7 } 
	{ convSet_1_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ convSet_1_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ convSet_1_empty_n sc_in sc_logic 1 signal 7 } 
	{ convSet_1_read sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "ITER", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ITER", "role": "default" }} , 
 	{ "name": "m_axi_gmem3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WID" }} , 
 	{ "name": "m_axi_gmem3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RID" }} , 
 	{ "name": "m_axi_gmem3_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem3", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BID" }} , 
 	{ "name": "m_axi_gmem3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BUSER" }} , 
 	{ "name": "ConvArray", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ConvArray", "role": "default" }} , 
 	{ "name": "syscontrol_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_0", "role": "din" }} , 
 	{ "name": "syscontrol_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "syscontrol_0", "role": "num_data_valid" }} , 
 	{ "name": "syscontrol_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "syscontrol_0", "role": "fifo_cap" }} , 
 	{ "name": "syscontrol_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_0", "role": "full_n" }} , 
 	{ "name": "syscontrol_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_0", "role": "write" }} , 
 	{ "name": "syscontrol_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_1", "role": "din" }} , 
 	{ "name": "syscontrol_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "syscontrol_1", "role": "num_data_valid" }} , 
 	{ "name": "syscontrol_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "syscontrol_1", "role": "fifo_cap" }} , 
 	{ "name": "syscontrol_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_1", "role": "full_n" }} , 
 	{ "name": "syscontrol_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_1", "role": "write" }} , 
 	{ "name": "syscontrol_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_2", "role": "din" }} , 
 	{ "name": "syscontrol_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "syscontrol_2", "role": "num_data_valid" }} , 
 	{ "name": "syscontrol_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "syscontrol_2", "role": "fifo_cap" }} , 
 	{ "name": "syscontrol_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_2", "role": "full_n" }} , 
 	{ "name": "syscontrol_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_2", "role": "write" }} , 
 	{ "name": "convSet_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_0", "role": "dout" }} , 
 	{ "name": "convSet_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_0", "role": "num_data_valid" }} , 
 	{ "name": "convSet_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_0", "role": "fifo_cap" }} , 
 	{ "name": "convSet_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_0", "role": "empty_n" }} , 
 	{ "name": "convSet_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_0", "role": "read" }} , 
 	{ "name": "convSet_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_1", "role": "dout" }} , 
 	{ "name": "convSet_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_1", "role": "num_data_valid" }} , 
 	{ "name": "convSet_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_1", "role": "fifo_cap" }} , 
 	{ "name": "convSet_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_1", "role": "empty_n" }} , 
 	{ "name": "convSet_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_1", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "8", "10", "12", "13", "14"],
		"CDFG" : "SystemControl",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ITER", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem3_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "ConvArray", "Type" : "None", "Direction" : "I"},
			{"Name" : "syscontrol_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_315_4_fu_161", "Port" : "syscontrol_0", "Inst_start_state" : "76", "Inst_end_state" : "78"},
					{"ID" : "8", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_321_5_fu_151", "Port" : "syscontrol_0", "Inst_start_state" : "76", "Inst_end_state" : "77"},
					{"ID" : "1", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_295_1_fu_132", "Port" : "syscontrol_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "syscontrol_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_315_4_fu_161", "Port" : "syscontrol_1", "Inst_start_state" : "76", "Inst_end_state" : "78"},
					{"ID" : "8", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_321_5_fu_151", "Port" : "syscontrol_1", "Inst_start_state" : "76", "Inst_end_state" : "77"},
					{"ID" : "1", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_295_1_fu_132", "Port" : "syscontrol_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "syscontrol_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_315_4_fu_161", "Port" : "syscontrol_2", "Inst_start_state" : "76", "Inst_end_state" : "78"},
					{"ID" : "8", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_321_5_fu_151", "Port" : "syscontrol_2", "Inst_start_state" : "76", "Inst_end_state" : "77"},
					{"ID" : "1", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_295_1_fu_132", "Port" : "syscontrol_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "convSet_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_304_3_fu_142", "Port" : "convSet_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "convSet_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_304_3_fu_142", "Port" : "convSet_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_301_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "78", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state77"], "QuitState" : ["ap_ST_fsm_state76"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state78"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_SystemControl_Pipeline_VITIS_LOOP_295_1_fu_132", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "SystemControl_Pipeline_VITIS_LOOP_295_1",
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
			{"Name" : "VITIS_LOOP_295_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SystemControl_Pipeline_VITIS_LOOP_295_1_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_SystemControl_Pipeline_VITIS_LOOP_304_3_fu_142", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "SystemControl_Pipeline_VITIS_LOOP_304_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "612", "EstimateLatencyMax" : "612",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "convSet_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "convSet_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "convSet_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "convSet_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_304_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SystemControl_Pipeline_VITIS_LOOP_304_3_fu_142.fptrunc_64ns_32_1_no_dsp_1_U4", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SystemControl_Pipeline_VITIS_LOOP_304_3_fu_142.fpext_32ns_64_1_no_dsp_1_U5", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SystemControl_Pipeline_VITIS_LOOP_304_3_fu_142.printdouble_U6", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SystemControl_Pipeline_VITIS_LOOP_304_3_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_SystemControl_Pipeline_VITIS_LOOP_321_5_fu_151", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "SystemControl_Pipeline_VITIS_LOOP_321_5",
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
			{"Name" : "VITIS_LOOP_321_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SystemControl_Pipeline_VITIS_LOOP_321_5_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_SystemControl_Pipeline_VITIS_LOOP_315_4_fu_161", "Parent" : "0", "Child" : ["11"],
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SystemControl_Pipeline_VITIS_LOOP_315_4_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_1_no_dsp_1_U19", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_1_no_dsp_1_U20", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.printdouble_U21", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	SystemControl {
		ITER {Type I LastRead 0 FirstWrite -1}
		gmem3 {Type O LastRead 8 FirstWrite 7}
		ConvArray {Type I LastRead 0 FirstWrite -1}
		syscontrol_0 {Type O LastRead -1 FirstWrite 1}
		syscontrol_1 {Type O LastRead -1 FirstWrite 1}
		syscontrol_2 {Type O LastRead -1 FirstWrite 1}
		convSet_0 {Type I LastRead 1 FirstWrite -1}
		convSet_1 {Type I LastRead 1 FirstWrite -1}}
	SystemControl_Pipeline_VITIS_LOOP_295_1 {
		syscontrol_0 {Type O LastRead -1 FirstWrite 1}
		syscontrol_1 {Type O LastRead -1 FirstWrite 1}
		syscontrol_2 {Type O LastRead -1 FirstWrite 1}}
	SystemControl_Pipeline_VITIS_LOOP_304_3 {
		convSet_0 {Type I LastRead 1 FirstWrite -1}
		convSet_1 {Type I LastRead 1 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 10}}
	SystemControl_Pipeline_VITIS_LOOP_321_5 {
		syscontrol_0 {Type O LastRead -1 FirstWrite 1}
		syscontrol_1 {Type O LastRead -1 FirstWrite 1}
		syscontrol_2 {Type O LastRead -1 FirstWrite 1}}
	SystemControl_Pipeline_VITIS_LOOP_315_4 {
		syscontrol_0 {Type O LastRead -1 FirstWrite 1}
		syscontrol_1 {Type O LastRead -1 FirstWrite 1}
		syscontrol_2 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ITER { ap_none {  { ITER in_data 0 32 } } }
	 { m_axi {  { m_axi_gmem3_AWVALID VALID 1 1 }  { m_axi_gmem3_AWREADY READY 0 1 }  { m_axi_gmem3_AWADDR ADDR 1 64 }  { m_axi_gmem3_AWID ID 1 1 }  { m_axi_gmem3_AWLEN SIZE 1 32 }  { m_axi_gmem3_AWSIZE BURST 1 3 }  { m_axi_gmem3_AWBURST LOCK 1 2 }  { m_axi_gmem3_AWLOCK CACHE 1 2 }  { m_axi_gmem3_AWCACHE PROT 1 4 }  { m_axi_gmem3_AWPROT QOS 1 3 }  { m_axi_gmem3_AWQOS REGION 1 4 }  { m_axi_gmem3_AWREGION USER 1 4 }  { m_axi_gmem3_AWUSER DATA 1 1 }  { m_axi_gmem3_WVALID VALID 1 1 }  { m_axi_gmem3_WREADY READY 0 1 }  { m_axi_gmem3_WDATA FIFONUM 1 32 }  { m_axi_gmem3_WSTRB STRB 1 4 }  { m_axi_gmem3_WLAST LAST 1 1 }  { m_axi_gmem3_WID ID 1 1 }  { m_axi_gmem3_WUSER DATA 1 1 }  { m_axi_gmem3_ARVALID VALID 1 1 }  { m_axi_gmem3_ARREADY READY 0 1 }  { m_axi_gmem3_ARADDR ADDR 1 64 }  { m_axi_gmem3_ARID ID 1 1 }  { m_axi_gmem3_ARLEN SIZE 1 32 }  { m_axi_gmem3_ARSIZE BURST 1 3 }  { m_axi_gmem3_ARBURST LOCK 1 2 }  { m_axi_gmem3_ARLOCK CACHE 1 2 }  { m_axi_gmem3_ARCACHE PROT 1 4 }  { m_axi_gmem3_ARPROT QOS 1 3 }  { m_axi_gmem3_ARQOS REGION 1 4 }  { m_axi_gmem3_ARREGION USER 1 4 }  { m_axi_gmem3_ARUSER DATA 1 1 }  { m_axi_gmem3_RVALID VALID 0 1 }  { m_axi_gmem3_RREADY READY 1 1 }  { m_axi_gmem3_RDATA FIFONUM 0 32 }  { m_axi_gmem3_RLAST LAST 0 1 }  { m_axi_gmem3_RID ID 0 1 }  { m_axi_gmem3_RFIFONUM LEN 0 11 }  { m_axi_gmem3_RUSER DATA 0 1 }  { m_axi_gmem3_RRESP RESP 0 2 }  { m_axi_gmem3_BVALID VALID 0 1 }  { m_axi_gmem3_BREADY READY 1 1 }  { m_axi_gmem3_BRESP RESP 0 2 }  { m_axi_gmem3_BID ID 0 1 }  { m_axi_gmem3_BUSER DATA 0 1 } } }
	ConvArray { ap_none {  { ConvArray in_data 0 64 } } }
	syscontrol_0 { ap_fifo {  { syscontrol_0_din fifo_data_in 1 1 }  { syscontrol_0_num_data_valid fifo_status_num_data_valid 0 3 }  { syscontrol_0_fifo_cap fifo_update 0 3 }  { syscontrol_0_full_n fifo_status 0 1 }  { syscontrol_0_write fifo_port_we 1 1 } } }
	syscontrol_1 { ap_fifo {  { syscontrol_1_din fifo_data_in 1 1 }  { syscontrol_1_num_data_valid fifo_status_num_data_valid 0 3 }  { syscontrol_1_fifo_cap fifo_update 0 3 }  { syscontrol_1_full_n fifo_status 0 1 }  { syscontrol_1_write fifo_port_we 1 1 } } }
	syscontrol_2 { ap_fifo {  { syscontrol_2_din fifo_data_in 1 1 }  { syscontrol_2_num_data_valid fifo_status_num_data_valid 0 3 }  { syscontrol_2_fifo_cap fifo_update 0 3 }  { syscontrol_2_full_n fifo_status 0 1 }  { syscontrol_2_write fifo_port_we 1 1 } } }
	convSet_0 { ap_fifo {  { convSet_0_dout fifo_data_in 0 32 }  { convSet_0_num_data_valid fifo_status_num_data_valid 0 3 }  { convSet_0_fifo_cap fifo_update 0 3 }  { convSet_0_empty_n fifo_status 0 1 }  { convSet_0_read fifo_port_we 1 1 } } }
	convSet_1 { ap_fifo {  { convSet_1_dout fifo_data_in 0 32 }  { convSet_1_num_data_valid fifo_status_num_data_valid 0 3 }  { convSet_1_fifo_cap fifo_update 0 3 }  { convSet_1_empty_n fifo_status 0 1 }  { convSet_1_read fifo_port_we 1 1 } } }
}
