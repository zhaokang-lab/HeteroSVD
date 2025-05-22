set moduleName TopPL
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {TopPL}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 512 regular {axi_master 0}  }
	{ gmem1 int 512 regular {axi_master 1}  }
	{ gmem2 int 512 regular {axi_master 1}  }
	{ gmem3 int 32 regular {axi_master 1}  }
	{ dataIn int 64 regular {axi_slave 0}  }
	{ U int 64 regular {axi_slave 0}  }
	{ S int 64 regular {axi_slave 0}  }
	{ ConvArray int 64 regular {axi_slave 0}  }
	{ ITER int 32 regular {axi_slave 0}  }
	{ sweep_tx0_0_V_data_V int 128 regular {axi_s 1 volatile  { sweep_tx0_0 Data } }  }
	{ sweep_tx0_0_V_keep_V int 16 regular {axi_s 1 volatile  { sweep_tx0_0 Keep } }  }
	{ sweep_tx0_0_V_strb_V int 16 regular {axi_s 1 volatile  { sweep_tx0_0 Strb } }  }
	{ sweep_tx0_0_V_last_V int 1 regular {axi_s 1 volatile  { sweep_tx0_0 Last } }  }
	{ sweep_rx0_0_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx0_0 Data } }  }
	{ sweep_rx0_0_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx0_0 Keep } }  }
	{ sweep_rx0_0_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx0_0 Strb } }  }
	{ sweep_rx0_0_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx0_0 Last } }  }
	{ sweep_tx0_1_V_data_V int 128 regular {axi_s 1 volatile  { sweep_tx0_1 Data } }  }
	{ sweep_tx0_1_V_keep_V int 16 regular {axi_s 1 volatile  { sweep_tx0_1 Keep } }  }
	{ sweep_tx0_1_V_strb_V int 16 regular {axi_s 1 volatile  { sweep_tx0_1 Strb } }  }
	{ sweep_tx0_1_V_last_V int 1 regular {axi_s 1 volatile  { sweep_tx0_1 Last } }  }
	{ sweep_rx0_1_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx0_1 Data } }  }
	{ sweep_rx0_1_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx0_1 Keep } }  }
	{ sweep_rx0_1_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx0_1 Strb } }  }
	{ sweep_rx0_1_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx0_1 Last } }  }
	{ norm_tx0_V_data_V int 128 regular {axi_s 1 volatile  { norm_tx0 Data } }  }
	{ norm_tx0_V_keep_V int 16 regular {axi_s 1 volatile  { norm_tx0 Keep } }  }
	{ norm_tx0_V_strb_V int 16 regular {axi_s 1 volatile  { norm_tx0 Strb } }  }
	{ norm_tx0_V_last_V int 1 regular {axi_s 1 volatile  { norm_tx0 Last } }  }
	{ norm_rx0_V_data_V int 128 regular {axi_s 0 volatile  { norm_rx0 Data } }  }
	{ norm_rx0_V_keep_V int 16 regular {axi_s 0 volatile  { norm_rx0 Keep } }  }
	{ norm_rx0_V_strb_V int 16 regular {axi_s 0 volatile  { norm_rx0 Strb } }  }
	{ norm_rx0_V_last_V int 1 regular {axi_s 0 volatile  { norm_rx0 Last } }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "dataIn","offset": { "type": "dynamic","port_name": "dataIn","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "U","offset": { "type": "dynamic","port_name": "U","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "S","offset": { "type": "dynamic","port_name": "S","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem3", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "ConvArray","offset": { "type": "dynamic","port_name": "ConvArray","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "dataIn", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "U", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "S", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "ConvArray", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "ITER", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "sweep_tx0_0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx0_0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx0_0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx0_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx0_0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_tx0_1_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx0_1_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx0_1_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx0_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx0_1_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_1_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_1_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx0_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "norm_tx0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "norm_tx0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "norm_tx0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "norm_tx0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "norm_rx0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "norm_rx0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "norm_rx0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "norm_rx0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 236
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 512 signal 1 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 512 signal 1 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 512 signal 2 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 512 signal 2 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem3_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem3_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem3_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem3_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem3_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem3_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_gmem3_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem3_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem3_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem3_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem3_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem3_BUSER sc_in sc_lv 1 signal 3 } 
	{ sweep_tx0_0_TDATA sc_out sc_lv 128 signal 9 } 
	{ sweep_tx0_0_TKEEP sc_out sc_lv 16 signal 10 } 
	{ sweep_tx0_0_TSTRB sc_out sc_lv 16 signal 11 } 
	{ sweep_tx0_0_TLAST sc_out sc_lv 1 signal 12 } 
	{ sweep_rx0_0_TDATA sc_in sc_lv 128 signal 13 } 
	{ sweep_rx0_0_TKEEP sc_in sc_lv 16 signal 14 } 
	{ sweep_rx0_0_TSTRB sc_in sc_lv 16 signal 15 } 
	{ sweep_rx0_0_TLAST sc_in sc_lv 1 signal 16 } 
	{ sweep_tx0_1_TDATA sc_out sc_lv 128 signal 17 } 
	{ sweep_tx0_1_TKEEP sc_out sc_lv 16 signal 18 } 
	{ sweep_tx0_1_TSTRB sc_out sc_lv 16 signal 19 } 
	{ sweep_tx0_1_TLAST sc_out sc_lv 1 signal 20 } 
	{ sweep_rx0_1_TDATA sc_in sc_lv 128 signal 21 } 
	{ sweep_rx0_1_TKEEP sc_in sc_lv 16 signal 22 } 
	{ sweep_rx0_1_TSTRB sc_in sc_lv 16 signal 23 } 
	{ sweep_rx0_1_TLAST sc_in sc_lv 1 signal 24 } 
	{ norm_tx0_TDATA sc_out sc_lv 128 signal 25 } 
	{ norm_tx0_TKEEP sc_out sc_lv 16 signal 26 } 
	{ norm_tx0_TSTRB sc_out sc_lv 16 signal 27 } 
	{ norm_tx0_TLAST sc_out sc_lv 1 signal 28 } 
	{ norm_rx0_TDATA sc_in sc_lv 128 signal 29 } 
	{ norm_rx0_TKEEP sc_in sc_lv 16 signal 30 } 
	{ norm_rx0_TSTRB sc_in sc_lv 16 signal 31 } 
	{ norm_rx0_TLAST sc_in sc_lv 1 signal 32 } 
	{ sweep_tx0_0_TVALID sc_out sc_logic 1 outvld 12 } 
	{ sweep_tx0_0_TREADY sc_in sc_logic 1 outacc 12 } 
	{ sweep_tx0_1_TVALID sc_out sc_logic 1 outvld 20 } 
	{ sweep_tx0_1_TREADY sc_in sc_logic 1 outacc 20 } 
	{ norm_tx0_TVALID sc_out sc_logic 1 outvld 28 } 
	{ norm_tx0_TREADY sc_in sc_logic 1 outacc 28 } 
	{ sweep_rx0_0_TVALID sc_in sc_logic 1 invld 16 } 
	{ sweep_rx0_0_TREADY sc_out sc_logic 1 inacc 16 } 
	{ sweep_rx0_1_TVALID sc_in sc_logic 1 invld 24 } 
	{ sweep_rx0_1_TREADY sc_out sc_logic 1 inacc 24 } 
	{ norm_rx0_TVALID sc_in sc_logic 1 invld 32 } 
	{ norm_rx0_TREADY sc_out sc_logic 1 inacc 32 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"TopPL","role":"start","value":"0","valid_bit":"0"},{"name":"TopPL","role":"continue","value":"0","valid_bit":"4"},{"name":"TopPL","role":"auto_start","value":"0","valid_bit":"7"},{"name":"dataIn","role":"data","value":"16"},{"name":"U","role":"data","value":"28"},{"name":"S","role":"data","value":"40"},{"name":"ConvArray","role":"data","value":"52"},{"name":"ITER","role":"data","value":"64"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"TopPL","role":"start","value":"0","valid_bit":"0"},{"name":"TopPL","role":"done","value":"0","valid_bit":"1"},{"name":"TopPL","role":"idle","value":"0","valid_bit":"2"},{"name":"TopPL","role":"ready","value":"0","valid_bit":"3"},{"name":"TopPL","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BID" }} , 
 	{ "name": "m_axi_gmem3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BUSER" }} , 
 	{ "name": "sweep_tx0_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_tx0_0_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_tx0_0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_tx0_0_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_tx0_0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_tx0_0_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_tx0_0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_tx0_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx0_0_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx0_0_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx0_0_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx0_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_tx0_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_tx0_1_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_tx0_1_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_tx0_1_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_tx0_1_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_tx0_1_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_tx0_1_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_tx0_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx0_1_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx0_1_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx0_1_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx0_1_V_last_V", "role": "default" }} , 
 	{ "name": "norm_tx0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "norm_tx0_V_data_V", "role": "default" }} , 
 	{ "name": "norm_tx0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "norm_tx0_V_keep_V", "role": "default" }} , 
 	{ "name": "norm_tx0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "norm_tx0_V_strb_V", "role": "default" }} , 
 	{ "name": "norm_tx0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "norm_tx0_V_last_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "norm_rx0_V_data_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "norm_rx0_V_keep_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "norm_rx0_V_strb_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "norm_rx0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_tx0_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sweep_tx0_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_tx0_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "sweep_tx0_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_tx0_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sweep_tx0_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_tx0_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "sweep_tx0_1_V_last_V", "role": "default" }} , 
 	{ "name": "norm_tx0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "norm_tx0_V_last_V", "role": "default" }} , 
 	{ "name": "norm_tx0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "norm_tx0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx0_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx0_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx0_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx0_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx0_1_V_last_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "norm_rx0_V_last_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "norm_rx0_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "21", "48", "65", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113"],
		"CDFG" : "TopPL",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "6", "Name" : "SystemControl_U0"},
			{"ID" : "48", "Name" : "RoundRobin_U0"}],
		"OutputProcess" : [
			{"ID" : "6", "Name" : "SystemControl_U0"},
			{"ID" : "21", "Name" : "Send_U0"},
			{"ID" : "48", "Name" : "RoundRobin_U0"},
			{"ID" : "65", "Name" : "Receive_U0"}],
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "RoundRobin_U0", "Port" : "gmem0"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "RoundRobin_U0", "Port" : "gmem1"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "RoundRobin_U0", "Port" : "gmem2"}]},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "SystemControl_U0", "Port" : "gmem3"}]},
			{"Name" : "dataIn", "Type" : "None", "Direction" : "I"},
			{"Name" : "U", "Type" : "None", "Direction" : "I"},
			{"Name" : "S", "Type" : "None", "Direction" : "I"},
			{"Name" : "ConvArray", "Type" : "None", "Direction" : "I"},
			{"Name" : "ITER", "Type" : "None", "Direction" : "I"},
			{"Name" : "sweep_tx0_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "Send_U0", "Port" : "sweep_tx0_0_V_data_V"}]},
			{"Name" : "sweep_tx0_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "Send_U0", "Port" : "sweep_tx0_0_V_keep_V"}]},
			{"Name" : "sweep_tx0_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "Send_U0", "Port" : "sweep_tx0_0_V_strb_V"}]},
			{"Name" : "sweep_tx0_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "Send_U0", "Port" : "sweep_tx0_0_V_last_V"}]},
			{"Name" : "sweep_rx0_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "Receive_U0", "Port" : "sweep_rx0_0_V_data_V"}]},
			{"Name" : "sweep_rx0_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "Receive_U0", "Port" : "sweep_rx0_0_V_keep_V"}]},
			{"Name" : "sweep_rx0_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "Receive_U0", "Port" : "sweep_rx0_0_V_strb_V"}]},
			{"Name" : "sweep_rx0_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "Receive_U0", "Port" : "sweep_rx0_0_V_last_V"}]},
			{"Name" : "sweep_tx0_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "Send_U0", "Port" : "sweep_tx0_1_V_data_V"}]},
			{"Name" : "sweep_tx0_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "Send_U0", "Port" : "sweep_tx0_1_V_keep_V"}]},
			{"Name" : "sweep_tx0_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "Send_U0", "Port" : "sweep_tx0_1_V_strb_V"}]},
			{"Name" : "sweep_tx0_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "Send_U0", "Port" : "sweep_tx0_1_V_last_V"}]},
			{"Name" : "sweep_rx0_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "Receive_U0", "Port" : "sweep_rx0_1_V_data_V"}]},
			{"Name" : "sweep_rx0_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "Receive_U0", "Port" : "sweep_rx0_1_V_keep_V"}]},
			{"Name" : "sweep_rx0_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "Receive_U0", "Port" : "sweep_rx0_1_V_strb_V"}]},
			{"Name" : "sweep_rx0_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "Receive_U0", "Port" : "sweep_rx0_1_V_last_V"}]},
			{"Name" : "norm_tx0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "Send_U0", "Port" : "norm_tx0_V_data_V"}]},
			{"Name" : "norm_tx0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "Send_U0", "Port" : "norm_tx0_V_keep_V"}]},
			{"Name" : "norm_tx0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "Send_U0", "Port" : "norm_tx0_V_strb_V"}]},
			{"Name" : "norm_tx0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "Send_U0", "Port" : "norm_tx0_V_last_V"}]},
			{"Name" : "norm_rx0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "Receive_U0", "Port" : "norm_rx0_V_data_V"}]},
			{"Name" : "norm_rx0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "Receive_U0", "Port" : "norm_rx0_V_keep_V"}]},
			{"Name" : "norm_rx0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "Receive_U0", "Port" : "norm_rx0_V_strb_V"}]},
			{"Name" : "norm_rx0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "Receive_U0", "Port" : "norm_rx0_V_last_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem0_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem1_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem2_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem3_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0", "Parent" : "0", "Child" : ["7", "9", "14", "16", "18", "19", "20"],
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
			{"Name" : "syscontrol_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "103", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_315_4_fu_161", "Port" : "syscontrol_0", "Inst_start_state" : "76", "Inst_end_state" : "78"},
					{"ID" : "14", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_321_5_fu_151", "Port" : "syscontrol_0", "Inst_start_state" : "76", "Inst_end_state" : "77"},
					{"ID" : "7", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_295_1_fu_132", "Port" : "syscontrol_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "syscontrol_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["48"], "DependentChan" : "104", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_315_4_fu_161", "Port" : "syscontrol_1", "Inst_start_state" : "76", "Inst_end_state" : "78"},
					{"ID" : "14", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_321_5_fu_151", "Port" : "syscontrol_1", "Inst_start_state" : "76", "Inst_end_state" : "77"},
					{"ID" : "7", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_295_1_fu_132", "Port" : "syscontrol_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "syscontrol_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["65"], "DependentChan" : "105", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_315_4_fu_161", "Port" : "syscontrol_2", "Inst_start_state" : "76", "Inst_end_state" : "78"},
					{"ID" : "14", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_321_5_fu_151", "Port" : "syscontrol_2", "Inst_start_state" : "76", "Inst_end_state" : "77"},
					{"ID" : "7", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_295_1_fu_132", "Port" : "syscontrol_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "convSet_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["65"], "DependentChan" : "106", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_304_3_fu_142", "Port" : "convSet_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "convSet_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["65"], "DependentChan" : "107", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_304_3_fu_142", "Port" : "convSet_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_301_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "78", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state77"], "QuitState" : ["ap_ST_fsm_state76"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state78"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_295_1_fu_132", "Parent" : "6", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_295_1_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_304_3_fu_142", "Parent" : "6", "Child" : ["10", "11", "12", "13"],
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_304_3_fu_142.fptrunc_64ns_32_1_no_dsp_1_U4", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_304_3_fu_142.fpext_32ns_64_1_no_dsp_1_U5", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_304_3_fu_142.printdouble_U6", "Parent" : "9"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_304_3_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_321_5_fu_151", "Parent" : "6", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_321_5_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_315_4_fu_161", "Parent" : "6", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_315_4_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.fpext_32ns_64_1_no_dsp_1_U19", "Parent" : "6"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.fcmp_32ns_32ns_1_1_no_dsp_1_U20", "Parent" : "6"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.printdouble_U21", "Parent" : "6"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Send_U0", "Parent" : "0", "Child" : ["22", "32", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47"],
		"CDFG" : "Send",
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
		"StartSource" : "6",
		"StartFifo" : "start_for_Send_U0_U",
		"Port" : [
			{"Name" : "syscontrol_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "103", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "syscontrol_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["48"], "DependentChan" : "108", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_send2AIE_3_fu_118", "Port" : "send_fifo_0", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "22", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_94", "Port" : "send_fifo_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "send_fifo_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["48"], "DependentChan" : "109", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_send2AIE_3_fu_118", "Port" : "send_fifo_0", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "22", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_94", "Port" : "send_fifo_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx0_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_94", "Port" : "sweep_tx0_0_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx0_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_94", "Port" : "sweep_tx0_0_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx0_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_94", "Port" : "sweep_tx0_0_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx0_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_94", "Port" : "sweep_tx0_0_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx0_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_94", "Port" : "sweep_tx0_1_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx0_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_94", "Port" : "sweep_tx0_1_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx0_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_94", "Port" : "sweep_tx0_1_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx0_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_94", "Port" : "sweep_tx0_1_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "norm_tx0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_send2AIE_3_fu_118", "Port" : "norm_tx0_V_data_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "norm_tx0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_send2AIE_3_fu_118", "Port" : "norm_tx0_V_keep_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "norm_tx0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_send2AIE_3_fu_118", "Port" : "norm_tx0_V_strb_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "norm_tx0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_send2AIE_3_fu_118", "Port" : "norm_tx0_V_last_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_179_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_94", "Parent" : "21", "Child" : ["23"],
		"CDFG" : "dataflow_parent_loop_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41641", "EstimateLatencyMax" : "41641",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "23", "Name" : "dataflow_in_loop_VITIS_LOOP_172_2_U0"}],
		"OutputProcess" : [
			{"ID" : "23", "Name" : "dataflow_in_loop_VITIS_LOOP_172_2_U0"}],
		"Port" : [
			{"Name" : "send_fifo_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_172_2_U0", "Port" : "send_fifo_0"}]},
			{"Name" : "sweep_tx0_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_172_2_U0", "Port" : "sweep_tx0_0_V_data_V"}]},
			{"Name" : "sweep_tx0_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_172_2_U0", "Port" : "sweep_tx0_0_V_keep_V"}]},
			{"Name" : "sweep_tx0_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_172_2_U0", "Port" : "sweep_tx0_0_V_strb_V"}]},
			{"Name" : "sweep_tx0_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_172_2_U0", "Port" : "sweep_tx0_0_V_last_V"}]},
			{"Name" : "send_fifo_1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_172_2_U0", "Port" : "send_fifo_1"}]},
			{"Name" : "sweep_tx0_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_172_2_U0", "Port" : "sweep_tx0_1_V_data_V"}]},
			{"Name" : "sweep_tx0_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_172_2_U0", "Port" : "sweep_tx0_1_V_keep_V"}]},
			{"Name" : "sweep_tx0_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_172_2_U0", "Port" : "sweep_tx0_1_V_strb_V"}]},
			{"Name" : "sweep_tx0_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_172_2_U0", "Port" : "sweep_tx0_1_V_last_V"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_172_2", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_172_2_U0", "has_continue" : "1"}}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0", "Parent" : "22", "Child" : ["24", "28"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_172_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "346", "EstimateLatencyMax" : "346",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "24", "Name" : "send2AIE_U0"},
			{"ID" : "28", "Name" : "send2AIE_2_U0"}],
		"OutputProcess" : [
			{"ID" : "24", "Name" : "send2AIE_U0"},
			{"ID" : "28", "Name" : "send2AIE_2_U0"}],
		"Port" : [
			{"Name" : "send_fifo_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "send2AIE_U0", "Port" : "send_fifo_0"}]},
			{"Name" : "sweep_tx0_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "send2AIE_U0", "Port" : "sweep_tx0_0_V_data_V"}]},
			{"Name" : "sweep_tx0_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "send2AIE_U0", "Port" : "sweep_tx0_0_V_keep_V"}]},
			{"Name" : "sweep_tx0_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "send2AIE_U0", "Port" : "sweep_tx0_0_V_strb_V"}]},
			{"Name" : "sweep_tx0_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "send2AIE_U0", "Port" : "sweep_tx0_0_V_last_V"}]},
			{"Name" : "send_fifo_1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "send2AIE_2_U0", "Port" : "send_fifo_1"}]},
			{"Name" : "sweep_tx0_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "send2AIE_2_U0", "Port" : "sweep_tx0_1_V_data_V"}]},
			{"Name" : "sweep_tx0_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "send2AIE_2_U0", "Port" : "sweep_tx0_1_V_keep_V"}]},
			{"Name" : "sweep_tx0_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "send2AIE_2_U0", "Port" : "sweep_tx0_1_V_strb_V"}]},
			{"Name" : "sweep_tx0_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "send2AIE_2_U0", "Port" : "sweep_tx0_1_V_last_V"}]}]},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_U0", "Parent" : "23", "Child" : ["25", "26"],
		"CDFG" : "send2AIE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "346", "EstimateLatencyMax" : "346",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "send_fifo_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "send_fifo_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "sweep_tx0_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"BlockSignal" : [
					{"Name" : "sweep_tx0_0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "sweep_tx0_0_V_data_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "sweep_tx0_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "sweep_tx0_0_V_keep_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "sweep_tx0_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "sweep_tx0_0_V_strb_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "sweep_tx0_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "sweep_tx0_0_V_last_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_102_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_U0.data_temp_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_U0.grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_146", "Parent" : "24", "Child" : ["27"],
		"CDFG" : "send2AIE_Pipeline_VITIS_LOOP_112_2",
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
			{"Name" : "sweep_tx0_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0",
				"BlockSignal" : [
					{"Name" : "sweep_tx0_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_tx0_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0"},
			{"Name" : "sweep_tx0_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0"},
			{"Name" : "sweep_tx0_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_0"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_U0.grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_146.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_2_U0", "Parent" : "23", "Child" : ["29", "30"],
		"CDFG" : "send2AIE_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "346", "EstimateLatencyMax" : "346",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "send_fifo_1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_send2AIE_2_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "send_fifo_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "sweep_tx0_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"BlockSignal" : [
					{"Name" : "sweep_tx0_1_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_send2AIE_2_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "sweep_tx0_1_V_data_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "sweep_tx0_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_send2AIE_2_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "sweep_tx0_1_V_keep_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "sweep_tx0_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_send2AIE_2_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "sweep_tx0_1_V_strb_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "sweep_tx0_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_send2AIE_2_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "sweep_tx0_1_V_last_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_102_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_2_U0.data_temp_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_2_U0.grp_send2AIE_2_Pipeline_VITIS_LOOP_112_2_fu_146", "Parent" : "28", "Child" : ["31"],
		"CDFG" : "send2AIE_2_Pipeline_VITIS_LOOP_112_2",
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
			{"Name" : "send_fifo_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "send_fifo_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sweep_tx0_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1",
				"BlockSignal" : [
					{"Name" : "sweep_tx0_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_tx0_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1"},
			{"Name" : "sweep_tx0_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1"},
			{"Name" : "sweep_tx0_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx0_1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "31", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_2_U0.grp_send2AIE_2_Pipeline_VITIS_LOOP_112_2_fu_146.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_send2AIE_3_fu_118", "Parent" : "21", "Child" : ["33", "34"],
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
					{"ID" : "34", "SubInstance" : "grp_send2AIE_3_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "send_fifo_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "norm_tx0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"BlockSignal" : [
					{"Name" : "norm_tx0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_send2AIE_3_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "norm_tx0_V_data_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "norm_tx0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_send2AIE_3_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "norm_tx0_V_keep_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "norm_tx0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_send2AIE_3_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "norm_tx0_V_strb_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "norm_tx0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_send2AIE_3_Pipeline_VITIS_LOOP_112_2_fu_146", "Port" : "norm_tx0_V_last_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_102_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_send2AIE_3_fu_118.data_temp_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_send2AIE_3_fu_118.grp_send2AIE_3_Pipeline_VITIS_LOOP_112_2_fu_146", "Parent" : "32", "Child" : ["35"],
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
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_send2AIE_3_fu_118.grp_send2AIE_3_Pipeline_VITIS_LOOP_112_2_fu_146.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx0_0_V_data_V_U", "Parent" : "21"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx0_0_V_keep_V_U", "Parent" : "21"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx0_0_V_strb_V_U", "Parent" : "21"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx0_0_V_last_V_U", "Parent" : "21"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx0_1_V_data_V_U", "Parent" : "21"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx0_1_V_keep_V_U", "Parent" : "21"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx0_1_V_strb_V_U", "Parent" : "21"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx0_1_V_last_V_U", "Parent" : "21"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_norm_tx0_V_data_V_U", "Parent" : "21"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_norm_tx0_V_keep_V_U", "Parent" : "21"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_norm_tx0_V_strb_V_U", "Parent" : "21"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_norm_tx0_V_last_V_U", "Parent" : "21"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0", "Parent" : "0", "Child" : ["49", "51", "53", "55", "57", "59", "61", "63"],
		"CDFG" : "RoundRobin",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "syscontrol_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "104", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "syscontrol_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_142_2_fu_249", "Port" : "gmem0", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "49", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_150_3_fu_240", "Port" : "gmem0", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "dataIn", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_198_2_fu_302", "Port" : "gmem1", "Inst_start_state" : "92", "Inst_end_state" : "93"}]},
			{"Name" : "U", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "S", "Type" : "None", "Direction" : "I"},
			{"Name" : "send_fifo_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "108", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_150_3_fu_240", "Port" : "send_fifo_0", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "53", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_256_3_fu_258", "Port" : "send_fifo_0", "Inst_start_state" : "77", "Inst_end_state" : "78"},
					{"ID" : "55", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_261_4_fu_266", "Port" : "send_fifo_0", "Inst_start_state" : "80", "Inst_end_state" : "81"},
					{"ID" : "57", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_267_5_fu_274", "Port" : "send_fifo_0", "Inst_start_state" : "83", "Inst_end_state" : "84"}]},
			{"Name" : "send_fifo_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "109", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_142_2_fu_249", "Port" : "send_fifo_1", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "57", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_267_5_fu_274", "Port" : "send_fifo_1", "Inst_start_state" : "83", "Inst_end_state" : "84"},
					{"ID" : "59", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_275_6_fu_286", "Port" : "send_fifo_1", "Inst_start_state" : "86", "Inst_end_state" : "87"},
					{"ID" : "61", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_280_7_fu_294", "Port" : "send_fifo_1", "Inst_start_state" : "89", "Inst_end_state" : "90"}]},
			{"Name" : "receive_fifo_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["65"], "DependentChan" : "110", "DependentChanDepth" : "4096", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "receive_fifo_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_261_4_fu_266", "Port" : "receive_fifo_0", "Inst_start_state" : "80", "Inst_end_state" : "81"},
					{"ID" : "57", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_267_5_fu_274", "Port" : "receive_fifo_0", "Inst_start_state" : "83", "Inst_end_state" : "84"},
					{"ID" : "59", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_275_6_fu_286", "Port" : "receive_fifo_0", "Inst_start_state" : "86", "Inst_end_state" : "87"},
					{"ID" : "63", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_198_2_fu_302", "Port" : "receive_fifo_0", "Inst_start_state" : "92", "Inst_end_state" : "93"}]},
			{"Name" : "receive_fifo_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["65"], "DependentChan" : "111", "DependentChanDepth" : "4096", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_256_3_fu_258", "Port" : "receive_fifo_1", "Inst_start_state" : "77", "Inst_end_state" : "78"},
					{"ID" : "57", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_267_5_fu_274", "Port" : "receive_fifo_1", "Inst_start_state" : "83", "Inst_end_state" : "84"},
					{"ID" : "61", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_280_7_fu_294", "Port" : "receive_fifo_1", "Inst_start_state" : "89", "Inst_end_state" : "90"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_140_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "163", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state75"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state76"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_254_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "163", "FirstState" : "ap_ST_fsm_state77", "LastState" : ["ap_ST_fsm_state90"], "QuitState" : ["ap_ST_fsm_state77"], "PreState" : ["ap_ST_fsm_state76"], "PostState" : ["ap_ST_fsm_state76"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_250_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "163", "FirstState" : "ap_ST_fsm_state76", "LastState" : ["ap_ST_fsm_state77"], "QuitState" : ["ap_ST_fsm_state76"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state91"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_197_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "163", "FirstState" : "ap_ST_fsm_state92", "LastState" : ["ap_ST_fsm_state95"], "QuitState" : ["ap_ST_fsm_state92"], "PreState" : ["ap_ST_fsm_state91"], "PostState" : ["ap_ST_fsm_state96"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_150_3_fu_240", "Parent" : "48", "Child" : ["50"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_150_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln150", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_150_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_150_3_fu_240.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_142_2_fu_249", "Parent" : "48", "Child" : ["52"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_142_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln150", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_142_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_142_2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_256_3_fu_258", "Parent" : "48", "Child" : ["54"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_256_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_256_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_256_3_fu_258.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_261_4_fu_266", "Parent" : "48", "Child" : ["56"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_261_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
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
			{"Name" : "send_fifo_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_261_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_261_4_fu_266.flow_control_loop_pipe_sequential_init_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_267_5_fu_274", "Parent" : "48", "Child" : ["58"],
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
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_267_5_fu_274.flow_control_loop_pipe_sequential_init_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_275_6_fu_286", "Parent" : "48", "Child" : ["60"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_275_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
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
			{"Name" : "send_fifo_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_275_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_275_6_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_280_7_fu_294", "Parent" : "48", "Child" : ["62"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_280_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_280_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_280_7_fu_294.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_198_2_fu_302", "Parent" : "48", "Child" : ["64"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_198_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln197", "Type" : "None", "Direction" : "I"},
			{"Name" : "receive_fifo_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_198_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_198_2_fu_302.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Receive_U0", "Parent" : "0", "Child" : ["66", "88", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102"],
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
		"StartSource" : "6",
		"StartFifo" : "start_for_Receive_U0_U",
		"Port" : [
			{"Name" : "syscontrol_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "105", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "syscontrol_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "convSet_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "106", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "convSet_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "convSet_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "107", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "convSet_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "receive_fifo_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["48"], "DependentChan" : "110", "DependentChanDepth" : "4096", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "receive_fifo_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "88", "SubInstance" : "grp_receive4DDR_fu_128", "Port" : "receive_fifo_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "receive_fifo_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["48"], "DependentChan" : "111", "DependentChanDepth" : "4096", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "receive_fifo_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx0_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "sweep_rx0_0_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx0_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "sweep_rx0_0_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx0_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "sweep_rx0_0_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx0_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "sweep_rx0_0_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx0_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "sweep_rx0_1_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx0_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "sweep_rx0_1_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx0_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "sweep_rx0_1_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx0_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_dataflow_parent_loop_proc10_fu_100", "Port" : "sweep_rx0_1_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "norm_rx0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_receive4DDR_fu_128", "Port" : "norm_rx0_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "norm_rx0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_receive4DDR_fu_128", "Port" : "norm_rx0_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "norm_rx0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_receive4DDR_fu_128", "Port" : "norm_rx0_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "norm_rx0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_receive4DDR_fu_128", "Port" : "norm_rx0_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_216_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_188_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100", "Parent" : "65", "Child" : ["67"],
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
			{"ID" : "67", "Name" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0"}],
		"OutputProcess" : [
			{"ID" : "67", "Name" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0"}],
		"Port" : [
			{"Name" : "receive_fifo_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "receive_fifo_0"}]},
			{"Name" : "sweep_rx0_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "sweep_rx0_0_V_data_V"}]},
			{"Name" : "sweep_rx0_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "sweep_rx0_0_V_keep_V"}]},
			{"Name" : "sweep_rx0_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "sweep_rx0_0_V_strb_V"}]},
			{"Name" : "sweep_rx0_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "sweep_rx0_0_V_last_V"}]},
			{"Name" : "receive_fifo_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "receive_fifo_1"}]},
			{"Name" : "sweep_rx0_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "sweep_rx0_1_V_data_V"}]},
			{"Name" : "sweep_rx0_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "sweep_rx0_1_V_keep_V"}]},
			{"Name" : "sweep_rx0_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "sweep_rx0_1_V_strb_V"}]},
			{"Name" : "sweep_rx0_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "sweep_rx0_1_V_last_V"}]},
			{"Name" : "convSet_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "convSet_0"}]},
			{"Name" : "convSet_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Port" : "convSet_1"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_220_2", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "has_continue" : "1"}}]},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0", "Parent" : "66", "Child" : ["68", "74", "80", "81", "82", "83", "84", "85", "86", "87"],
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
			{"ID" : "68", "Name" : "receive4AIE_1_U0"},
			{"ID" : "74", "Name" : "receive4AIE_U0"}],
		"OutputProcess" : [
			{"ID" : "81", "Name" : "Block_newFuncRoot_proc_proc11_U0"},
			{"ID" : "83", "Name" : "Block_newFuncRoot_proc_proc13_U0"}],
		"Port" : [
			{"Name" : "receive_fifo_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "receive4AIE_1_U0", "Port" : "receive_fifo_0"}]},
			{"Name" : "sweep_rx0_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx0_0_V_data_V"}]},
			{"Name" : "sweep_rx0_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx0_0_V_keep_V"}]},
			{"Name" : "sweep_rx0_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx0_0_V_strb_V"}]},
			{"Name" : "sweep_rx0_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx0_0_V_last_V"}]},
			{"Name" : "receive_fifo_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "receive4AIE_U0", "Port" : "receive_fifo_1"}]},
			{"Name" : "sweep_rx0_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx0_1_V_data_V"}]},
			{"Name" : "sweep_rx0_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx0_1_V_keep_V"}]},
			{"Name" : "sweep_rx0_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx0_1_V_strb_V"}]},
			{"Name" : "sweep_rx0_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx0_1_V_last_V"}]},
			{"Name" : "convSet_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "Block_newFuncRoot_proc_proc11_U0", "Port" : "convSet_0"}]},
			{"Name" : "convSet_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "Block_newFuncRoot_proc_proc13_U0", "Port" : "convSet_1"}]}]},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0", "Parent" : "67", "Child" : ["69", "71", "72", "73"],
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
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["80"], "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx0_0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_0_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_0_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_0_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_0",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_0_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0.grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "68", "Child" : ["70"],
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
	{"ID" : "70", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0.grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0.fptrunc_64ns_32_1_no_dsp_1_U153", "Parent" : "68"},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0.fpext_32ns_64_1_no_dsp_1_U154", "Parent" : "68"},
	{"ID" : "73", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0.fpext_32ns_64_1_no_dsp_1_U155", "Parent" : "68"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0", "Parent" : "67", "Child" : ["75", "77", "78", "79"],
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
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "85", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx0_1_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_1_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_1_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_1_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx0_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx0_1",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx0_1_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0.grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "74", "Child" : ["76"],
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
	{"ID" : "76", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0.grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0.fptrunc_64ns_32_1_no_dsp_1_U171", "Parent" : "74"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0.fpext_32ns_64_1_no_dsp_1_U172", "Parent" : "74"},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0.fpext_32ns_64_1_no_dsp_1_U173", "Parent" : "74"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc_U0", "Parent" : "67",
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
			{"Name" : "conv0", "Type" : "None", "Direction" : "I", "DependentProc" : ["68"], "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["81"], "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc11_U0", "Parent" : "67",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["80"], "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc12_U0", "Parent" : "67",
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
			{"Name" : "conv1", "Type" : "None", "Direction" : "I", "DependentProc" : ["74"], "DependentChan" : "85", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["83"], "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc13_U0", "Parent" : "67",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["82"], "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.conv0_channel_U", "Parent" : "67"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.conv1_channel_U", "Parent" : "67"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.empty_92_U", "Parent" : "67"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.empty_U", "Parent" : "67"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_receive4DDR_fu_128", "Parent" : "65", "Child" : ["89"],
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
					{"ID" : "89", "SubInstance" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Port" : "receive_fifo_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "norm_rx0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"BlockSignal" : [
					{"Name" : "norm_rx0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Port" : "norm_rx0_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "norm_rx0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Port" : "norm_rx0_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "norm_rx0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Port" : "norm_rx0_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "norm_rx0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Port" : "norm_rx0_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_receive4DDR_fu_128.grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Parent" : "88", "Child" : ["90"],
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
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_receive4DDR_fu_128.grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx0_0_V_data_V_U", "Parent" : "65"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx0_0_V_keep_V_U", "Parent" : "65"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx0_0_V_strb_V_U", "Parent" : "65"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx0_0_V_last_V_U", "Parent" : "65"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx0_1_V_data_V_U", "Parent" : "65"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx0_1_V_keep_V_U", "Parent" : "65"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx0_1_V_strb_V_U", "Parent" : "65"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx0_1_V_last_V_U", "Parent" : "65"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_norm_rx0_V_data_V_U", "Parent" : "65"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_norm_rx0_V_keep_V_U", "Parent" : "65"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_norm_rx0_V_strb_V_U", "Parent" : "65"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_norm_rx0_V_last_V_U", "Parent" : "65"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.syscontrol_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.syscontrol_1_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.syscontrol_2_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convSet_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convSet_1_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.send_fifo_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.send_fifo_1_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.receive_fifo_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.receive_fifo_1_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Send_U0_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Receive_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	TopPL {
		gmem0 {Type I LastRead 2 FirstWrite -1}
		gmem1 {Type O LastRead 5 FirstWrite 2}
		gmem2 {Type O LastRead 5 FirstWrite 7}
		gmem3 {Type O LastRead 8 FirstWrite 7}
		dataIn {Type I LastRead 0 FirstWrite -1}
		U {Type I LastRead 0 FirstWrite -1}
		S {Type I LastRead 0 FirstWrite -1}
		ConvArray {Type I LastRead 0 FirstWrite -1}
		ITER {Type I LastRead 0 FirstWrite -1}
		sweep_tx0_0_V_data_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_0_V_keep_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_0_V_strb_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_0_V_last_V {Type O LastRead -1 FirstWrite 2}
		sweep_rx0_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_0_V_last_V {Type I LastRead 4 FirstWrite -1}
		sweep_tx0_1_V_data_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_1_V_keep_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_1_V_strb_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_1_V_last_V {Type O LastRead -1 FirstWrite 2}
		sweep_rx0_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx0_1_V_last_V {Type I LastRead 4 FirstWrite -1}
		norm_tx0_V_data_V {Type O LastRead -1 FirstWrite 2}
		norm_tx0_V_keep_V {Type O LastRead -1 FirstWrite 2}
		norm_tx0_V_strb_V {Type O LastRead -1 FirstWrite 2}
		norm_tx0_V_last_V {Type O LastRead -1 FirstWrite 2}
		norm_rx0_V_data_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_last_V {Type I LastRead 4 FirstWrite -1}}
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
		syscontrol_2 {Type O LastRead -1 FirstWrite 1}}
	Send {
		syscontrol_0 {Type I LastRead 1 FirstWrite -1}
		send_fifo_0 {Type I LastRead 1 FirstWrite -1}
		send_fifo_1 {Type I LastRead 1 FirstWrite -1}
		sweep_tx0_0_V_data_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_0_V_keep_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_0_V_strb_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_0_V_last_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_1_V_data_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_1_V_keep_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_1_V_strb_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_1_V_last_V {Type O LastRead -1 FirstWrite 2}
		norm_tx0_V_data_V {Type O LastRead -1 FirstWrite 2}
		norm_tx0_V_keep_V {Type O LastRead -1 FirstWrite 2}
		norm_tx0_V_strb_V {Type O LastRead -1 FirstWrite 2}
		norm_tx0_V_last_V {Type O LastRead -1 FirstWrite 2}}
	dataflow_parent_loop_proc {
		send_fifo_0 {Type I LastRead 1 FirstWrite -1}
		sweep_tx0_0_V_data_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_0_V_keep_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_0_V_strb_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_0_V_last_V {Type O LastRead -1 FirstWrite 2}
		send_fifo_1 {Type I LastRead 1 FirstWrite -1}
		sweep_tx0_1_V_data_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_1_V_keep_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_1_V_strb_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_1_V_last_V {Type O LastRead -1 FirstWrite 2}}
	dataflow_in_loop_VITIS_LOOP_172_2 {
		send_fifo_0 {Type I LastRead 1 FirstWrite -1}
		sweep_tx0_0_V_data_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_0_V_keep_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_0_V_strb_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_0_V_last_V {Type O LastRead -1 FirstWrite 2}
		send_fifo_1 {Type I LastRead 1 FirstWrite -1}
		sweep_tx0_1_V_data_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_1_V_keep_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_1_V_strb_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_1_V_last_V {Type O LastRead -1 FirstWrite 2}}
	send2AIE {
		send_fifo_0 {Type I LastRead 1 FirstWrite -1}
		sweep_tx0_0_V_data_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_0_V_keep_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_0_V_strb_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_0_V_last_V {Type O LastRead -1 FirstWrite 2}}
	send2AIE_Pipeline_VITIS_LOOP_112_2 {
		send_fifo_0 {Type I LastRead 1 FirstWrite -1}
		data_temp {Type IO LastRead 2 FirstWrite 2}
		sweep_tx0_0_V_data_V {Type O LastRead -1 FirstWrite 4}
		sweep_tx0_0_V_keep_V {Type O LastRead -1 FirstWrite 4}
		sweep_tx0_0_V_strb_V {Type O LastRead -1 FirstWrite 4}
		sweep_tx0_0_V_last_V {Type O LastRead -1 FirstWrite 4}}
	send2AIE_2 {
		send_fifo_1 {Type I LastRead 1 FirstWrite -1}
		sweep_tx0_1_V_data_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_1_V_keep_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_1_V_strb_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx0_1_V_last_V {Type O LastRead -1 FirstWrite 2}}
	send2AIE_2_Pipeline_VITIS_LOOP_112_2 {
		send_fifo_1 {Type I LastRead 1 FirstWrite -1}
		data_temp {Type IO LastRead 2 FirstWrite 2}
		sweep_tx0_1_V_data_V {Type O LastRead -1 FirstWrite 4}
		sweep_tx0_1_V_keep_V {Type O LastRead -1 FirstWrite 4}
		sweep_tx0_1_V_strb_V {Type O LastRead -1 FirstWrite 4}
		sweep_tx0_1_V_last_V {Type O LastRead -1 FirstWrite 4}}
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
		norm_tx0_V_last_V {Type O LastRead -1 FirstWrite 4}}
	RoundRobin {
		syscontrol_1 {Type I LastRead 2 FirstWrite -1}
		gmem0 {Type I LastRead 2 FirstWrite -1}
		dataIn {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type O LastRead 5 FirstWrite 2}
		U {Type I LastRead 0 FirstWrite -1}
		gmem2 {Type O LastRead 5 FirstWrite 7}
		S {Type I LastRead 0 FirstWrite -1}
		send_fifo_0 {Type O LastRead -1 FirstWrite 2}
		send_fifo_1 {Type O LastRead -1 FirstWrite 2}
		receive_fifo_0 {Type I LastRead 6 FirstWrite -1}
		receive_fifo_1 {Type I LastRead 1 FirstWrite -1}}
	RoundRobin_Pipeline_VITIS_LOOP_150_3 {
		send_fifo_0 {Type O LastRead -1 FirstWrite 2}
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln150 {Type I LastRead 0 FirstWrite -1}}
	RoundRobin_Pipeline_VITIS_LOOP_142_2 {
		send_fifo_1 {Type O LastRead -1 FirstWrite 2}
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln150 {Type I LastRead 0 FirstWrite -1}}
	RoundRobin_Pipeline_VITIS_LOOP_256_3 {
		receive_fifo_1 {Type I LastRead 1 FirstWrite -1}
		send_fifo_0 {Type O LastRead -1 FirstWrite 2}}
	RoundRobin_Pipeline_VITIS_LOOP_261_4 {
		receive_fifo_0 {Type I LastRead 1 FirstWrite -1}
		send_fifo_0 {Type O LastRead -1 FirstWrite 2}}
	RoundRobin_Pipeline_VITIS_LOOP_267_5 {
		receive_fifo_0 {Type I LastRead 1 FirstWrite -1}
		receive_fifo_1 {Type I LastRead 1 FirstWrite -1}
		send_fifo_0 {Type O LastRead -1 FirstWrite 2}
		send_fifo_1 {Type O LastRead -1 FirstWrite 2}}
	RoundRobin_Pipeline_VITIS_LOOP_275_6 {
		receive_fifo_0 {Type I LastRead 1 FirstWrite -1}
		send_fifo_1 {Type O LastRead -1 FirstWrite 2}}
	RoundRobin_Pipeline_VITIS_LOOP_280_7 {
		receive_fifo_1 {Type I LastRead 1 FirstWrite -1}
		send_fifo_1 {Type O LastRead -1 FirstWrite 2}}
	RoundRobin_Pipeline_VITIS_LOOP_198_2 {
		gmem1 {Type O LastRead -1 FirstWrite 2}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		receive_fifo_0 {Type I LastRead 1 FirstWrite -1}}
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
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 512 }  { m_axi_gmem0_WSTRB STRB 1 64 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 512 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 8 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 512 }  { m_axi_gmem1_WSTRB STRB 1 64 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 8 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 512 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 8 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 512 }  { m_axi_gmem2_WSTRB STRB 1 64 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 8 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 512 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
	gmem3 { m_axi {  { m_axi_gmem3_AWVALID VALID 1 1 }  { m_axi_gmem3_AWREADY READY 0 1 }  { m_axi_gmem3_AWADDR ADDR 1 64 }  { m_axi_gmem3_AWID ID 1 1 }  { m_axi_gmem3_AWLEN SIZE 1 8 }  { m_axi_gmem3_AWSIZE BURST 1 3 }  { m_axi_gmem3_AWBURST LOCK 1 2 }  { m_axi_gmem3_AWLOCK CACHE 1 2 }  { m_axi_gmem3_AWCACHE PROT 1 4 }  { m_axi_gmem3_AWPROT QOS 1 3 }  { m_axi_gmem3_AWQOS REGION 1 4 }  { m_axi_gmem3_AWREGION USER 1 4 }  { m_axi_gmem3_AWUSER DATA 1 1 }  { m_axi_gmem3_WVALID VALID 1 1 }  { m_axi_gmem3_WREADY READY 0 1 }  { m_axi_gmem3_WDATA FIFONUM 1 32 }  { m_axi_gmem3_WSTRB STRB 1 4 }  { m_axi_gmem3_WLAST LAST 1 1 }  { m_axi_gmem3_WID ID 1 1 }  { m_axi_gmem3_WUSER DATA 1 1 }  { m_axi_gmem3_ARVALID VALID 1 1 }  { m_axi_gmem3_ARREADY READY 0 1 }  { m_axi_gmem3_ARADDR ADDR 1 64 }  { m_axi_gmem3_ARID ID 1 1 }  { m_axi_gmem3_ARLEN SIZE 1 8 }  { m_axi_gmem3_ARSIZE BURST 1 3 }  { m_axi_gmem3_ARBURST LOCK 1 2 }  { m_axi_gmem3_ARLOCK CACHE 1 2 }  { m_axi_gmem3_ARCACHE PROT 1 4 }  { m_axi_gmem3_ARPROT QOS 1 3 }  { m_axi_gmem3_ARQOS REGION 1 4 }  { m_axi_gmem3_ARREGION USER 1 4 }  { m_axi_gmem3_ARUSER DATA 1 1 }  { m_axi_gmem3_RVALID VALID 0 1 }  { m_axi_gmem3_RREADY READY 1 1 }  { m_axi_gmem3_RDATA FIFONUM 0 32 }  { m_axi_gmem3_RLAST LAST 0 1 }  { m_axi_gmem3_RID ID 0 1 }  { m_axi_gmem3_RUSER DATA 0 1 }  { m_axi_gmem3_RRESP RESP 0 2 }  { m_axi_gmem3_BVALID VALID 0 1 }  { m_axi_gmem3_BREADY READY 1 1 }  { m_axi_gmem3_BRESP RESP 0 2 }  { m_axi_gmem3_BID ID 0 1 }  { m_axi_gmem3_BUSER DATA 0 1 } } }
	sweep_tx0_0_V_data_V { axis {  { sweep_tx0_0_TDATA out_data 1 128 } } }
	sweep_tx0_0_V_keep_V { axis {  { sweep_tx0_0_TKEEP out_data 1 16 } } }
	sweep_tx0_0_V_strb_V { axis {  { sweep_tx0_0_TSTRB out_data 1 16 } } }
	sweep_tx0_0_V_last_V { axis {  { sweep_tx0_0_TLAST out_data 1 1 }  { sweep_tx0_0_TVALID out_vld 1 1 }  { sweep_tx0_0_TREADY out_acc 0 1 } } }
	sweep_rx0_0_V_data_V { axis {  { sweep_rx0_0_TDATA in_data 0 128 } } }
	sweep_rx0_0_V_keep_V { axis {  { sweep_rx0_0_TKEEP in_data 0 16 } } }
	sweep_rx0_0_V_strb_V { axis {  { sweep_rx0_0_TSTRB in_data 0 16 } } }
	sweep_rx0_0_V_last_V { axis {  { sweep_rx0_0_TLAST in_data 0 1 }  { sweep_rx0_0_TVALID in_vld 0 1 }  { sweep_rx0_0_TREADY in_acc 1 1 } } }
	sweep_tx0_1_V_data_V { axis {  { sweep_tx0_1_TDATA out_data 1 128 } } }
	sweep_tx0_1_V_keep_V { axis {  { sweep_tx0_1_TKEEP out_data 1 16 } } }
	sweep_tx0_1_V_strb_V { axis {  { sweep_tx0_1_TSTRB out_data 1 16 } } }
	sweep_tx0_1_V_last_V { axis {  { sweep_tx0_1_TLAST out_data 1 1 }  { sweep_tx0_1_TVALID out_vld 1 1 }  { sweep_tx0_1_TREADY out_acc 0 1 } } }
	sweep_rx0_1_V_data_V { axis {  { sweep_rx0_1_TDATA in_data 0 128 } } }
	sweep_rx0_1_V_keep_V { axis {  { sweep_rx0_1_TKEEP in_data 0 16 } } }
	sweep_rx0_1_V_strb_V { axis {  { sweep_rx0_1_TSTRB in_data 0 16 } } }
	sweep_rx0_1_V_last_V { axis {  { sweep_rx0_1_TLAST in_data 0 1 }  { sweep_rx0_1_TVALID in_vld 0 1 }  { sweep_rx0_1_TREADY in_acc 1 1 } } }
	norm_tx0_V_data_V { axis {  { norm_tx0_TDATA out_data 1 128 } } }
	norm_tx0_V_keep_V { axis {  { norm_tx0_TKEEP out_data 1 16 } } }
	norm_tx0_V_strb_V { axis {  { norm_tx0_TSTRB out_data 1 16 } } }
	norm_tx0_V_last_V { axis {  { norm_tx0_TLAST out_data 1 1 }  { norm_tx0_TVALID out_vld 1 1 }  { norm_tx0_TREADY out_acc 0 1 } } }
	norm_rx0_V_data_V { axis {  { norm_rx0_TDATA in_data 0 128 } } }
	norm_rx0_V_keep_V { axis {  { norm_rx0_TKEEP in_data 0 16 } } }
	norm_rx0_V_strb_V { axis {  { norm_rx0_TSTRB in_data 0 16 } } }
	norm_rx0_V_last_V { axis {  { norm_rx0_TLAST in_data 0 1 }  { norm_rx0_TVALID in_vld 0 1 }  { norm_rx0_TREADY in_acc 1 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 64 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 64 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict gmem2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 64 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict gmem3 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 64 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 64 }
	{ gmem1 64 }
	{ gmem2 64 }
	{ gmem3 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 64 }
	{ gmem1 64 }
	{ gmem2 64 }
	{ gmem3 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
