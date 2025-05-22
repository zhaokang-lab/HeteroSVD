set SynModuleInfo {
  {SRCNAME SystemControl_Pipeline_VITIS_LOOP_295_1 MODELNAME SystemControl_Pipeline_VITIS_LOOP_295_1 RTLNAME TopPL_SystemControl_Pipeline_VITIS_LOOP_295_1
    SUBMODULES {
      {MODELNAME TopPL_flow_control_loop_pipe_sequential_init RTLNAME TopPL_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME TopPL_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME SystemControl_Pipeline_VITIS_LOOP_304_3 MODELNAME SystemControl_Pipeline_VITIS_LOOP_304_3 RTLNAME TopPL_SystemControl_Pipeline_VITIS_LOOP_304_3
    SUBMODULES {
      {MODELNAME TopPL_fptrunc_64ns_32_1_no_dsp_1 RTLNAME TopPL_fptrunc_64ns_32_1_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME TopPL_fpext_32ns_64_1_no_dsp_1 RTLNAME TopPL_fpext_32ns_64_1_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME TopPL_printdouble RTLNAME TopPL_printdouble BINDTYPE op TYPE printdouble IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME SystemControl_Pipeline_VITIS_LOOP_321_5 MODELNAME SystemControl_Pipeline_VITIS_LOOP_321_5 RTLNAME TopPL_SystemControl_Pipeline_VITIS_LOOP_321_5}
  {SRCNAME SystemControl_Pipeline_VITIS_LOOP_315_4 MODELNAME SystemControl_Pipeline_VITIS_LOOP_315_4 RTLNAME TopPL_SystemControl_Pipeline_VITIS_LOOP_315_4}
  {SRCNAME SystemControl MODELNAME SystemControl RTLNAME TopPL_SystemControl
    SUBMODULES {
      {MODELNAME TopPL_fcmp_32ns_32ns_1_1_no_dsp_1 RTLNAME TopPL_fcmp_32ns_32ns_1_1_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME send2AIE_Pipeline_VITIS_LOOP_112_2 MODELNAME send2AIE_Pipeline_VITIS_LOOP_112_2 RTLNAME TopPL_send2AIE_Pipeline_VITIS_LOOP_112_2}
  {SRCNAME send2AIE MODELNAME send2AIE RTLNAME TopPL_send2AIE
    SUBMODULES {
      {MODELNAME TopPL_send2AIE_data_temp_RAM_AUTO_1R1W RTLNAME TopPL_send2AIE_data_temp_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME send2AIE.2_Pipeline_VITIS_LOOP_112_2 MODELNAME send2AIE_2_Pipeline_VITIS_LOOP_112_2 RTLNAME TopPL_send2AIE_2_Pipeline_VITIS_LOOP_112_2}
  {SRCNAME send2AIE.2 MODELNAME send2AIE_2 RTLNAME TopPL_send2AIE_2}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_172_2 MODELNAME dataflow_in_loop_VITIS_LOOP_172_2 RTLNAME TopPL_dataflow_in_loop_VITIS_LOOP_172_2}
  {SRCNAME dataflow_parent_loop_proc MODELNAME dataflow_parent_loop_proc RTLNAME TopPL_dataflow_parent_loop_proc}
  {SRCNAME send2AIE.3_Pipeline_VITIS_LOOP_112_2 MODELNAME send2AIE_3_Pipeline_VITIS_LOOP_112_2 RTLNAME TopPL_send2AIE_3_Pipeline_VITIS_LOOP_112_2}
  {SRCNAME send2AIE.3 MODELNAME send2AIE_3 RTLNAME TopPL_send2AIE_3}
  {SRCNAME Send MODELNAME Send RTLNAME TopPL_Send
    SUBMODULES {
      {MODELNAME TopPL_regslice_both RTLNAME TopPL_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME TopPL_regslice_both_U}
    }
  }
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_150_3 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_150_3 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_150_3}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_142_2 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_142_2 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_142_2}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_256_3 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_256_3 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_256_3}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_261_4 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_261_4 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_261_4}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_267_5 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_267_5 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_267_5}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_275_6 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_275_6 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_275_6}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_280_7 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_280_7 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_280_7}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_198_2 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_198_2 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_198_2}
  {SRCNAME RoundRobin MODELNAME RoundRobin RTLNAME TopPL_RoundRobin}
  {SRCNAME receive4AIE.1_Pipeline_VITIS_LOOP_76_2 MODELNAME receive4AIE_1_Pipeline_VITIS_LOOP_76_2 RTLNAME TopPL_receive4AIE_1_Pipeline_VITIS_LOOP_76_2}
  {SRCNAME receive4AIE.1 MODELNAME receive4AIE_1 RTLNAME TopPL_receive4AIE_1}
  {SRCNAME receive4AIE_Pipeline_VITIS_LOOP_76_2 MODELNAME receive4AIE_Pipeline_VITIS_LOOP_76_2 RTLNAME TopPL_receive4AIE_Pipeline_VITIS_LOOP_76_2}
  {SRCNAME receive4AIE MODELNAME receive4AIE RTLNAME TopPL_receive4AIE}
  {SRCNAME Block_newFuncRoot_proc_proc MODELNAME Block_newFuncRoot_proc_proc RTLNAME TopPL_Block_newFuncRoot_proc_proc}
  {SRCNAME Block_newFuncRoot_proc_proc11 MODELNAME Block_newFuncRoot_proc_proc11 RTLNAME TopPL_Block_newFuncRoot_proc_proc11}
  {SRCNAME Block_newFuncRoot_proc_proc12 MODELNAME Block_newFuncRoot_proc_proc12 RTLNAME TopPL_Block_newFuncRoot_proc_proc12}
  {SRCNAME Block_newFuncRoot_proc_proc13 MODELNAME Block_newFuncRoot_proc_proc13 RTLNAME TopPL_Block_newFuncRoot_proc_proc13}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_220_2.1 MODELNAME dataflow_in_loop_VITIS_LOOP_220_2_1 RTLNAME TopPL_dataflow_in_loop_VITIS_LOOP_220_2_1
    SUBMODULES {
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME conv0_channel_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME conv1_channel_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME empty_92_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME empty_U}
    }
  }
  {SRCNAME dataflow_parent_loop_proc10 MODELNAME dataflow_parent_loop_proc10 RTLNAME TopPL_dataflow_parent_loop_proc10}
  {SRCNAME receive4DDR_Pipeline_VITIS_LOOP_39_2 MODELNAME receive4DDR_Pipeline_VITIS_LOOP_39_2 RTLNAME TopPL_receive4DDR_Pipeline_VITIS_LOOP_39_2}
  {SRCNAME receive4DDR MODELNAME receive4DDR RTLNAME TopPL_receive4DDR}
  {SRCNAME Receive MODELNAME Receive RTLNAME TopPL_Receive}
  {SRCNAME TopPL MODELNAME TopPL RTLNAME TopPL IS_TOP 1
    SUBMODULES {
      {MODELNAME TopPL_fifo_w1_d4_S RTLNAME TopPL_fifo_w1_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME syscontrol_U}
      {MODELNAME TopPL_fifo_w1_d4_S RTLNAME TopPL_fifo_w1_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME syscontrol_1_U}
      {MODELNAME TopPL_fifo_w1_d4_S RTLNAME TopPL_fifo_w1_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME syscontrol_2_U}
      {MODELNAME TopPL_fifo_w32_d4_S RTLNAME TopPL_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convSet_U}
      {MODELNAME TopPL_fifo_w32_d4_S RTLNAME TopPL_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convSet_1_U}
      {MODELNAME TopPL_fifo_w128_d512_B RTLNAME TopPL_fifo_w128_d512_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME send_fifo_U}
      {MODELNAME TopPL_fifo_w128_d512_B RTLNAME TopPL_fifo_w128_d512_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME send_fifo_1_U}
      {MODELNAME TopPL_fifo_w128_d4096_U RTLNAME TopPL_fifo_w128_d4096_U BINDTYPE storage TYPE fifo IMPL uram ALLOW_PRAGMA 1 INSTNAME receive_fifo_U}
      {MODELNAME TopPL_fifo_w128_d4096_U RTLNAME TopPL_fifo_w128_d4096_U BINDTYPE storage TYPE fifo IMPL uram ALLOW_PRAGMA 1 INSTNAME receive_fifo_1_U}
      {MODELNAME TopPL_start_for_Send_U0 RTLNAME TopPL_start_for_Send_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Send_U0_U}
      {MODELNAME TopPL_start_for_Receive_U0 RTLNAME TopPL_start_for_Receive_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Receive_U0_U}
      {MODELNAME TopPL_gmem0_m_axi RTLNAME TopPL_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME TopPL_gmem1_m_axi RTLNAME TopPL_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME TopPL_gmem2_m_axi RTLNAME TopPL_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME TopPL_gmem3_m_axi RTLNAME TopPL_gmem3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME TopPL_control_s_axi RTLNAME TopPL_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
