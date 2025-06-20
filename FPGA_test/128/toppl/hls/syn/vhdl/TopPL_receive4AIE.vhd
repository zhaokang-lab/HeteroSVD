-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity TopPL_receive4AIE is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    return_r : OUT STD_LOGIC_VECTOR (31 downto 0);
    receive_fifo_1_din : OUT STD_LOGIC_VECTOR (127 downto 0);
    receive_fifo_1_num_data_valid : IN STD_LOGIC_VECTOR (12 downto 0);
    receive_fifo_1_fifo_cap : IN STD_LOGIC_VECTOR (12 downto 0);
    receive_fifo_1_full_n : IN STD_LOGIC;
    receive_fifo_1_write : OUT STD_LOGIC;
    sweep_rx0_1_TDATA : IN STD_LOGIC_VECTOR (127 downto 0);
    sweep_rx0_1_TVALID : IN STD_LOGIC;
    sweep_rx0_1_TREADY : OUT STD_LOGIC;
    sweep_rx0_1_TKEEP : IN STD_LOGIC_VECTOR (15 downto 0);
    sweep_rx0_1_TSTRB : IN STD_LOGIC_VECTOR (15 downto 0);
    sweep_rx0_1_TLAST : IN STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of TopPL_receive4AIE is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv128_lc_1 : STD_LOGIC_VECTOR (127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_7F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111111";
    constant ap_const_lv32_5F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011111";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_60 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100000";
    constant ap_const_lv32_34 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110100";
    constant ap_const_lv32_3E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111110";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv52_0 : STD_LOGIC_VECTOR (51 downto 0) := "0000000000000000000000000000000000000000000000000000";
    constant ap_const_lv11_7FF : STD_LOGIC_VECTOR (10 downto 0) := "11111111111";
    constant ap_const_lv32_33 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110011";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal receive_fifo_1_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal sweep_rx0_1_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln69_fu_269_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal data_temp_17_fu_291_p5 : STD_LOGIC_VECTOR (127 downto 0);
    signal data_temp_17_reg_692 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_block_state2 : BOOLEAN;
    signal trunc_ln86_fu_319_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln86_reg_706 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln88_fu_333_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_179_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal dc_reg_717 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_182_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal dc_6_reg_724 : STD_LOGIC_VECTOR (63 downto 0);
    signal x_fp_sign_fu_375_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal x_fp_sign_reg_731 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal x_fp_sig_2_fu_393_p1 : STD_LOGIC_VECTOR (51 downto 0);
    signal x_fp_sig_2_reg_736 : STD_LOGIC_VECTOR (51 downto 0);
    signal icmp_ln25_fu_428_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln25_reg_741 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln25_2_fu_440_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln25_2_reg_747 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln18_fu_446_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln18_reg_753 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln18_4_fu_452_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln18_4_reg_760 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln18_5_fu_458_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln18_5_reg_766 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln18_6_fu_464_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln18_6_reg_772 : STD_LOGIC_VECTOR (0 downto 0);
    signal ymaggreater_2_fu_490_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ymaggreater_2_reg_778 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln18_fu_502_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln18_reg_783 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal xor_ln25_fu_537_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln25_reg_788 : STD_LOGIC_VECTOR (0 downto 0);
    signal res_7_fu_600_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal res_7_reg_793 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_fu_176_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_reg_798 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_start : STD_LOGIC;
    signal grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_done : STD_LOGIC;
    signal grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_idle : STD_LOGIC;
    signal grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_ready : STD_LOGIC;
    signal grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_receive_fifo_1_din : STD_LOGIC_VECTOR (127 downto 0);
    signal grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_receive_fifo_1_write : STD_LOGIC;
    signal grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_sweep_rx0_1_TREADY : STD_LOGIC;
    signal grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_data_temp_21_out : STD_LOGIC_VECTOR (127 downto 0);
    signal grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_data_temp_21_out_ap_vld : STD_LOGIC;
    signal grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_data_temp_20_out_o : STD_LOGIC_VECTOR (127 downto 0);
    signal grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_data_temp_20_out_o_ap_vld : STD_LOGIC;
    signal grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal data_temp_fu_120 : STD_LOGIC_VECTOR (127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal conv_2_fu_112 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal ap_block_state1 : BOOLEAN;
    signal i_04_fu_116 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal i_10_fu_263_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal data_temp_16_fu_124 : STD_LOGIC_VECTOR (127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal data_temp_18_fu_347_p5 : STD_LOGIC_VECTOR (127 downto 0);
    signal return_r_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal conv_fu_176_p0 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_179_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_182_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_281_p4 : STD_LOGIC_VECTOR (95 downto 0);
    signal fp_uint_tmp_fu_323_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_fu_372_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal data_4_fu_397_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal y_fp_exp_fu_408_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal x_fp_exp_fu_383_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal or_ln25_fu_422_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal y_fp_sig_fu_418_p1 : STD_LOGIC_VECTOR (51 downto 0);
    signal or_ln25_2_fu_434_p2 : STD_LOGIC_VECTOR (51 downto 0);
    signal ymaggreater_fu_470_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln39_fu_476_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal y_fp_sign_fu_400_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln39_fu_482_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal x_fp_sig_fu_511_p4 : STD_LOGIC_VECTOR (51 downto 0);
    signal t_fu_520_p4 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln25_2_fu_533_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln18_fu_543_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln18_10_fu_553_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln18_9_fu_548_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln18_11_fu_559_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal res_5_fu_529_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal res_fu_506_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln18_12_fu_573_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln18_3_fu_577_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln18_13_fu_583_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln25_fu_498_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln18_14_fu_589_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln18_fu_594_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal res_6_fu_565_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln18_4_fu_607_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln18_2_fu_612_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln18_15_fu_617_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln18_16_fu_622_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ST_fsm_state8_blk : STD_LOGIC;
    signal ap_ST_fsm_state9_blk : STD_LOGIC;
    signal ap_ST_fsm_state10_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component TopPL_receive4AIE_Pipeline_VITIS_LOOP_76_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        sweep_rx0_1_TVALID : IN STD_LOGIC;
        receive_fifo_1_din : OUT STD_LOGIC_VECTOR (127 downto 0);
        receive_fifo_1_num_data_valid : IN STD_LOGIC_VECTOR (12 downto 0);
        receive_fifo_1_fifo_cap : IN STD_LOGIC_VECTOR (12 downto 0);
        receive_fifo_1_full_n : IN STD_LOGIC;
        receive_fifo_1_write : OUT STD_LOGIC;
        data_temp_17 : IN STD_LOGIC_VECTOR (127 downto 0);
        data_temp_18 : IN STD_LOGIC_VECTOR (127 downto 0);
        sweep_rx0_1_TDATA : IN STD_LOGIC_VECTOR (127 downto 0);
        sweep_rx0_1_TREADY : OUT STD_LOGIC;
        sweep_rx0_1_TKEEP : IN STD_LOGIC_VECTOR (15 downto 0);
        sweep_rx0_1_TSTRB : IN STD_LOGIC_VECTOR (15 downto 0);
        sweep_rx0_1_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        data_temp_21_out : OUT STD_LOGIC_VECTOR (127 downto 0);
        data_temp_21_out_ap_vld : OUT STD_LOGIC;
        data_temp_20_out_i : IN STD_LOGIC_VECTOR (127 downto 0);
        data_temp_20_out_o : OUT STD_LOGIC_VECTOR (127 downto 0);
        data_temp_20_out_o_ap_vld : OUT STD_LOGIC );
    end component;


    component TopPL_fptrunc_64ns_32_1_no_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component TopPL_fpext_32ns_64_1_no_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;



begin
    grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158 : component TopPL_receive4AIE_Pipeline_VITIS_LOOP_76_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_start,
        ap_done => grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_done,
        ap_idle => grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_idle,
        ap_ready => grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_ready,
        sweep_rx0_1_TVALID => sweep_rx0_1_TVALID,
        receive_fifo_1_din => grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_receive_fifo_1_din,
        receive_fifo_1_num_data_valid => ap_const_lv13_0,
        receive_fifo_1_fifo_cap => ap_const_lv13_0,
        receive_fifo_1_full_n => receive_fifo_1_full_n,
        receive_fifo_1_write => grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_receive_fifo_1_write,
        data_temp_17 => data_temp_16_fu_124,
        data_temp_18 => data_temp_17_reg_692,
        sweep_rx0_1_TDATA => sweep_rx0_1_TDATA,
        sweep_rx0_1_TREADY => grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_sweep_rx0_1_TREADY,
        sweep_rx0_1_TKEEP => sweep_rx0_1_TKEEP,
        sweep_rx0_1_TSTRB => sweep_rx0_1_TSTRB,
        sweep_rx0_1_TLAST => sweep_rx0_1_TLAST,
        data_temp_21_out => grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_data_temp_21_out,
        data_temp_21_out_ap_vld => grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_data_temp_21_out_ap_vld,
        data_temp_20_out_i => data_temp_fu_120,
        data_temp_20_out_o => grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_data_temp_20_out_o,
        data_temp_20_out_o_ap_vld => grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_data_temp_20_out_o_ap_vld);

    fptrunc_64ns_32_1_no_dsp_1_U171 : component TopPL_fptrunc_64ns_32_1_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 64,
        dout_WIDTH => 32)
    port map (
        din0 => conv_fu_176_p0,
        dout => conv_fu_176_p1);

    fpext_32ns_64_1_no_dsp_1_U172 : component TopPL_fpext_32ns_64_1_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        dout_WIDTH => 64)
    port map (
        din0 => grp_fu_179_p0,
        dout => grp_fu_179_p1);

    fpext_32ns_64_1_no_dsp_1_U173 : component TopPL_fpext_32ns_64_1_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        dout_WIDTH => 64)
    port map (
        din0 => grp_fu_182_p0,
        dout => grp_fu_182_p1);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_state2) and (icmp_ln69_fu_269_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_ready = ap_const_logic_1)) then 
                    grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    return_r_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                return_r_preg <= ap_const_lv32_0;
            else
                if (((ap_const_boolean_0 = ap_block_state2) and (icmp_ln69_fu_269_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    return_r_preg <= conv_2_fu_112;
                end if; 
            end if;
        end if;
    end process;


    conv_2_fu_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_state1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                conv_2_fu_112 <= ap_const_lv32_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                conv_2_fu_112 <= conv_reg_798;
            end if; 
        end if;
    end process;

    data_temp_16_fu_124_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_state1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                data_temp_16_fu_124 <= ap_const_lv128_lc_1;
            elsif (((receive_fifo_1_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                data_temp_16_fu_124 <= data_temp_18_fu_347_p5;
            end if; 
        end if;
    end process;

    data_temp_fu_120_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_state1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                data_temp_fu_120 <= ap_const_lv128_lc_1;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_data_temp_20_out_o_ap_vld = ap_const_logic_1))) then 
                data_temp_fu_120 <= grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_data_temp_20_out_o;
            end if; 
        end if;
    end process;

    i_04_fu_116_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_state1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_04_fu_116 <= ap_const_lv4_0;
            elsif (((ap_const_boolean_0 = ap_block_state2) and (icmp_ln69_fu_269_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_04_fu_116 <= i_10_fu_263_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                and_ln18_reg_783 <= and_ln18_fu_502_p2;
                res_7_reg_793 <= res_7_fu_600_p3;
                xor_ln25_reg_788 <= xor_ln25_fu_537_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                conv_reg_798 <= conv_fu_176_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_state2) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                data_temp_17_reg_692 <= data_temp_17_fu_291_p5;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((receive_fifo_1_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                dc_6_reg_724 <= grp_fu_182_p1;
                dc_reg_717 <= grp_fu_179_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((sweep_rx0_1_TVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                grp_fu_179_p0 <= conv_2_fu_112;
                grp_fu_182_p0 <= bitcast_ln88_fu_333_p1;
                trunc_ln86_reg_706 <= trunc_ln86_fu_319_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                icmp_ln18_4_reg_760 <= icmp_ln18_4_fu_452_p2;
                icmp_ln18_5_reg_766 <= icmp_ln18_5_fu_458_p2;
                icmp_ln18_6_reg_772 <= icmp_ln18_6_fu_464_p2;
                icmp_ln18_reg_753 <= icmp_ln18_fu_446_p2;
                icmp_ln25_2_reg_747 <= icmp_ln25_2_fu_440_p2;
                icmp_ln25_reg_741 <= icmp_ln25_fu_428_p2;
                x_fp_sig_2_reg_736 <= x_fp_sig_2_fu_393_p1;
                x_fp_sign_reg_731 <= data_fu_372_p1(63 downto 63);
                ymaggreater_2_reg_778 <= ymaggreater_2_fu_490_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, receive_fifo_1_full_n, sweep_rx0_1_TVALID, ap_CS_fsm_state6, ap_CS_fsm_state2, icmp_ln69_fu_269_p2, ap_CS_fsm_state5, ap_block_state2, grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_done, ap_CS_fsm_state4, ap_block_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_boolean_0 = ap_block_state1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_boolean_0 = ap_block_state2) and (icmp_ln69_fu_269_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((ap_const_boolean_0 = ap_block_state2) and (icmp_ln69_fu_269_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                if (((sweep_rx0_1_TVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                if (((receive_fifo_1_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;
    and_ln18_10_fu_553_p2 <= (xor_ln18_fu_543_p2 and and_ln18_fu_502_p2);
    and_ln18_11_fu_559_p2 <= (and_ln18_9_fu_548_p2 and and_ln18_10_fu_553_p2);
    and_ln18_12_fu_573_p2 <= (icmp_ln18_5_reg_766 and icmp_ln18_4_reg_760);
    and_ln18_13_fu_583_p2 <= (xor_ln18_fu_543_p2 and xor_ln18_3_fu_577_p2);
    and_ln18_14_fu_589_p2 <= (icmp_ln18_reg_753 and and_ln18_13_fu_583_p2);
    and_ln18_15_fu_617_p2 <= (xor_ln25_reg_788 and or_ln18_2_fu_612_p2);
    and_ln18_16_fu_622_p2 <= (and_ln18_reg_783 and and_ln18_15_fu_617_p2);
    and_ln18_9_fu_548_p2 <= (xor_ln25_fu_537_p2 and icmp_ln18_reg_753);
    and_ln18_fu_502_p2 <= (icmp_ln18_5_reg_766 and icmp_ln18_4_reg_760);
    and_ln25_2_fu_533_p2 <= (icmp_ln25_reg_741 and icmp_ln25_2_reg_747);
    and_ln25_fu_498_p2 <= (icmp_ln25_reg_741 and icmp_ln25_2_reg_747);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);
    ap_ST_fsm_state10_blk <= ap_const_logic_0;

    ap_ST_fsm_state1_blk_assign_proc : process(ap_block_state1)
    begin
        if ((ap_const_boolean_1 = ap_block_state1)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(ap_block_state2)
    begin
        if ((ap_const_boolean_1 = ap_block_state2)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state3_blk <= ap_const_logic_0;

    ap_ST_fsm_state4_blk_assign_proc : process(grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_done)
    begin
        if ((grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state4_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state4_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state5_blk_assign_proc : process(sweep_rx0_1_TVALID)
    begin
        if ((sweep_rx0_1_TVALID = ap_const_logic_0)) then 
            ap_ST_fsm_state5_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state5_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state6_blk_assign_proc : process(receive_fifo_1_full_n)
    begin
        if ((receive_fifo_1_full_n = ap_const_logic_0)) then 
            ap_ST_fsm_state6_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state6_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state7_blk <= ap_const_logic_0;
    ap_ST_fsm_state8_blk <= ap_const_logic_0;
    ap_ST_fsm_state9_blk <= ap_const_logic_0;

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;


    ap_block_state2_assign_proc : process(sweep_rx0_1_TVALID, icmp_ln69_fu_269_p2)
    begin
                ap_block_state2 <= ((icmp_ln69_fu_269_p2 = ap_const_lv1_0) and (sweep_rx0_1_TVALID = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, icmp_ln69_fu_269_p2, ap_block_state2)
    begin
        if (((ap_const_boolean_0 = ap_block_state2) and (icmp_ln69_fu_269_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln69_fu_269_p2, ap_block_state2)
    begin
        if (((ap_const_boolean_0 = ap_block_state2) and (icmp_ln69_fu_269_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bitcast_ln88_fu_333_p1 <= fp_uint_tmp_fu_323_p4;
    conv_fu_176_p0 <= 
        dc_reg_717 when (and_ln18_16_fu_622_p2(0) = '1') else 
        res_7_reg_793;
    data_4_fu_397_p1 <= dc_6_reg_724;
    data_fu_372_p1 <= dc_reg_717;
    data_temp_17_fu_291_p5 <= (data_temp_fu_120(127 downto 96) & tmp_fu_281_p4);
    data_temp_18_fu_347_p5 <= (trunc_ln86_reg_706 & grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_data_temp_21_out(95 downto 0));
    fp_uint_tmp_fu_323_p4 <= sweep_rx0_1_TDATA(63 downto 32);
    grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_start <= grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_ap_start_reg;
    i_10_fu_263_p2 <= std_logic_vector(unsigned(i_04_fu_116) + unsigned(ap_const_lv4_1));
    icmp_ln18_4_fu_452_p2 <= "1" when (y_fp_exp_fu_408_p4 = ap_const_lv11_7FF) else "0";
    icmp_ln18_5_fu_458_p2 <= "0" when (y_fp_sig_fu_418_p1 = ap_const_lv52_0) else "1";
    icmp_ln18_6_fu_464_p2 <= "1" when (x_fp_sig_2_fu_393_p1 = ap_const_lv52_0) else "0";
    icmp_ln18_fu_446_p2 <= "1" when (x_fp_exp_fu_383_p4 = ap_const_lv11_7FF) else "0";
    icmp_ln25_2_fu_440_p2 <= "1" when (or_ln25_2_fu_434_p2 = ap_const_lv52_0) else "0";
    icmp_ln25_fu_428_p2 <= "1" when (or_ln25_fu_422_p2 = ap_const_lv11_0) else "0";
    icmp_ln69_fu_269_p2 <= "1" when (i_04_fu_116 = ap_const_lv4_8) else "0";
    or_ln18_2_fu_612_p2 <= (xor_ln18_4_fu_607_p2 or icmp_ln18_6_reg_772);
    or_ln18_fu_594_p2 <= (and_ln25_fu_498_p2 or and_ln18_14_fu_589_p2);
    or_ln25_2_fu_434_p2 <= (y_fp_sig_fu_418_p1 or x_fp_sig_2_fu_393_p1);
    or_ln25_fu_422_p2 <= (y_fp_exp_fu_408_p4 or x_fp_exp_fu_383_p4);

    receive_fifo_1_blk_n_assign_proc : process(receive_fifo_1_full_n, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            receive_fifo_1_blk_n <= receive_fifo_1_full_n;
        else 
            receive_fifo_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    receive_fifo_1_din_assign_proc : process(receive_fifo_1_full_n, ap_CS_fsm_state6, grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_receive_fifo_1_din, ap_CS_fsm_state4, data_temp_18_fu_347_p5)
    begin
        if (((receive_fifo_1_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            receive_fifo_1_din <= data_temp_18_fu_347_p5;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            receive_fifo_1_din <= grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_receive_fifo_1_din;
        else 
            receive_fifo_1_din <= grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_receive_fifo_1_din;
        end if; 
    end process;


    receive_fifo_1_write_assign_proc : process(receive_fifo_1_full_n, ap_CS_fsm_state6, grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_receive_fifo_1_write, ap_CS_fsm_state4)
    begin
        if (((receive_fifo_1_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            receive_fifo_1_write <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            receive_fifo_1_write <= grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_receive_fifo_1_write;
        else 
            receive_fifo_1_write <= ap_const_logic_0;
        end if; 
    end process;

    res_5_fu_529_p1 <= t_fu_520_p4;
    res_6_fu_565_p3 <= 
        res_5_fu_529_p1 when (and_ln18_11_fu_559_p2(0) = '1') else 
        res_fu_506_p3;
    res_7_fu_600_p3 <= 
        dc_6_reg_724 when (or_ln18_fu_594_p2(0) = '1') else 
        res_6_fu_565_p3;
    res_fu_506_p3 <= 
        dc_6_reg_724 when (ymaggreater_2_reg_778(0) = '1') else 
        dc_reg_717;

    return_r_assign_proc : process(ap_CS_fsm_state2, icmp_ln69_fu_269_p2, ap_block_state2, conv_2_fu_112, return_r_preg)
    begin
        if (((ap_const_boolean_0 = ap_block_state2) and (icmp_ln69_fu_269_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            return_r <= conv_2_fu_112;
        else 
            return_r <= return_r_preg;
        end if; 
    end process;

    select_ln39_fu_482_p3 <= 
        xor_ln39_fu_476_p2 when (x_fp_sign_fu_375_p3(0) = '1') else 
        ymaggreater_fu_470_p2;

    sweep_rx0_1_TDATA_blk_n_assign_proc : process(sweep_rx0_1_TVALID, ap_CS_fsm_state2, icmp_ln69_fu_269_p2, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or ((icmp_ln69_fu_269_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            sweep_rx0_1_TDATA_blk_n <= sweep_rx0_1_TVALID;
        else 
            sweep_rx0_1_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    sweep_rx0_1_TREADY_assign_proc : process(sweep_rx0_1_TVALID, ap_CS_fsm_state2, icmp_ln69_fu_269_p2, ap_CS_fsm_state5, ap_block_state2, grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_sweep_rx0_1_TREADY, ap_CS_fsm_state4)
    begin
        if ((((ap_const_boolean_0 = ap_block_state2) and (icmp_ln69_fu_269_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((sweep_rx0_1_TVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5)))) then 
            sweep_rx0_1_TREADY <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            sweep_rx0_1_TREADY <= grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158_sweep_rx0_1_TREADY;
        else 
            sweep_rx0_1_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    t_fu_520_p4 <= ((x_fp_sign_reg_731 & ap_const_lv11_7FF) & x_fp_sig_fu_511_p4);
    tmp_fu_281_p4 <= sweep_rx0_1_TDATA(127 downto 32);
    trunc_ln86_fu_319_p1 <= sweep_rx0_1_TDATA(32 - 1 downto 0);
    x_fp_exp_fu_383_p4 <= data_fu_372_p1(62 downto 52);
    x_fp_sig_2_fu_393_p1 <= data_fu_372_p1(52 - 1 downto 0);
    
    x_fp_sig_fu_511_p4_proc : process(x_fp_sig_2_reg_736)
    begin
        x_fp_sig_fu_511_p4 <= x_fp_sig_2_reg_736;
        x_fp_sig_fu_511_p4(51) <= ap_const_lv1_1(0);
    end process;

    x_fp_sign_fu_375_p3 <= data_fu_372_p1(63 downto 63);
    xor_ln18_3_fu_577_p2 <= (ap_const_lv1_1 xor and_ln18_12_fu_573_p2);
    xor_ln18_4_fu_607_p2 <= (icmp_ln18_reg_753 xor ap_const_lv1_1);
    xor_ln18_fu_543_p2 <= (icmp_ln18_6_reg_772 xor ap_const_lv1_1);
    xor_ln25_fu_537_p2 <= (ap_const_lv1_1 xor and_ln25_2_fu_533_p2);
    xor_ln39_fu_476_p2 <= (ymaggreater_fu_470_p2 xor ap_const_lv1_1);
    y_fp_exp_fu_408_p4 <= data_4_fu_397_p1(62 downto 52);
    y_fp_sig_fu_418_p1 <= data_4_fu_397_p1(52 - 1 downto 0);
    y_fp_sign_fu_400_p3 <= data_4_fu_397_p1(63 downto 63);
    ymaggreater_2_fu_490_p3 <= 
        select_ln39_fu_482_p3 when (y_fp_sign_fu_400_p3(0) = '1') else 
        ymaggreater_fu_470_p2;
    ymaggreater_fu_470_p2 <= "1" when (signed(data_fu_372_p1) < signed(data_4_fu_397_p1)) else "0";
end behav;
