
    wire dl_reset;
    wire dl_clock;
    assign dl_reset = ap_rst_n;
    assign dl_clock = ap_clk;
    wire [2:0] proc_0_data_FIFO_blk;
    wire [2:0] proc_0_data_PIPO_blk;
    wire [2:0] proc_0_start_FIFO_blk;
    wire [2:0] proc_0_TLF_FIFO_blk;
    wire [2:0] proc_0_input_sync_blk;
    wire [2:0] proc_0_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_0;
    reg [2:0] proc_dep_vld_vec_0_reg;
    wire [2:0] in_chan_dep_vld_vec_0;
    wire [35:0] in_chan_dep_data_vec_0;
    wire [2:0] token_in_vec_0;
    wire [2:0] out_chan_dep_vld_vec_0;
    wire [11:0] out_chan_dep_data_0;
    wire [2:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [11:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_4_0;
    wire [11:0] dep_chan_data_4_0;
    wire token_4_0;
    wire dep_chan_vld_5_0;
    wire [11:0] dep_chan_data_5_0;
    wire token_5_0;
    wire [2:0] proc_1_data_FIFO_blk;
    wire [2:0] proc_1_data_PIPO_blk;
    wire [2:0] proc_1_start_FIFO_blk;
    wire [2:0] proc_1_TLF_FIFO_blk;
    wire [2:0] proc_1_input_sync_blk;
    wire [2:0] proc_1_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_1;
    reg [2:0] proc_dep_vld_vec_1_reg;
    wire [2:0] in_chan_dep_vld_vec_1;
    wire [35:0] in_chan_dep_data_vec_1;
    wire [2:0] token_in_vec_1;
    wire [2:0] out_chan_dep_vld_vec_1;
    wire [11:0] out_chan_dep_data_1;
    wire [2:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [11:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_4_1;
    wire [11:0] dep_chan_data_4_1;
    wire token_4_1;
    wire dep_chan_vld_5_1;
    wire [11:0] dep_chan_data_5_1;
    wire token_5_1;
    wire [0:0] proc_2_data_FIFO_blk;
    wire [0:0] proc_2_data_PIPO_blk;
    wire [0:0] proc_2_start_FIFO_blk;
    wire [0:0] proc_2_TLF_FIFO_blk;
    wire [0:0] proc_2_input_sync_blk;
    wire [0:0] proc_2_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_2;
    reg [0:0] proc_dep_vld_vec_2_reg;
    wire [0:0] in_chan_dep_vld_vec_2;
    wire [11:0] in_chan_dep_data_vec_2;
    wire [0:0] token_in_vec_2;
    wire [0:0] out_chan_dep_vld_vec_2;
    wire [11:0] out_chan_dep_data_2;
    wire [0:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_3_2;
    wire [11:0] dep_chan_data_3_2;
    wire token_3_2;
    wire [0:0] proc_3_data_FIFO_blk;
    wire [0:0] proc_3_data_PIPO_blk;
    wire [0:0] proc_3_start_FIFO_blk;
    wire [0:0] proc_3_TLF_FIFO_blk;
    wire [0:0] proc_3_input_sync_blk;
    wire [0:0] proc_3_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_3;
    reg [0:0] proc_dep_vld_vec_3_reg;
    wire [0:0] in_chan_dep_vld_vec_3;
    wire [11:0] in_chan_dep_data_vec_3;
    wire [0:0] token_in_vec_3;
    wire [0:0] out_chan_dep_vld_vec_3;
    wire [11:0] out_chan_dep_data_3;
    wire [0:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_2_3;
    wire [11:0] dep_chan_data_2_3;
    wire token_2_3;
    wire [2:0] proc_4_data_FIFO_blk;
    wire [2:0] proc_4_data_PIPO_blk;
    wire [2:0] proc_4_start_FIFO_blk;
    wire [2:0] proc_4_TLF_FIFO_blk;
    wire [2:0] proc_4_input_sync_blk;
    wire [2:0] proc_4_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_4;
    reg [2:0] proc_dep_vld_vec_4_reg;
    wire [2:0] in_chan_dep_vld_vec_4;
    wire [35:0] in_chan_dep_data_vec_4;
    wire [2:0] token_in_vec_4;
    wire [2:0] out_chan_dep_vld_vec_4;
    wire [11:0] out_chan_dep_data_4;
    wire [2:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_0_4;
    wire [11:0] dep_chan_data_0_4;
    wire token_0_4;
    wire dep_chan_vld_1_4;
    wire [11:0] dep_chan_data_1_4;
    wire token_1_4;
    wire dep_chan_vld_5_4;
    wire [11:0] dep_chan_data_5_4;
    wire token_5_4;
    wire [2:0] proc_5_data_FIFO_blk;
    wire [2:0] proc_5_data_PIPO_blk;
    wire [2:0] proc_5_start_FIFO_blk;
    wire [2:0] proc_5_TLF_FIFO_blk;
    wire [2:0] proc_5_input_sync_blk;
    wire [2:0] proc_5_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_5;
    reg [2:0] proc_dep_vld_vec_5_reg;
    wire [2:0] in_chan_dep_vld_vec_5;
    wire [35:0] in_chan_dep_data_vec_5;
    wire [2:0] token_in_vec_5;
    wire [2:0] out_chan_dep_vld_vec_5;
    wire [11:0] out_chan_dep_data_5;
    wire [2:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_0_5;
    wire [11:0] dep_chan_data_0_5;
    wire token_0_5;
    wire dep_chan_vld_1_5;
    wire [11:0] dep_chan_data_1_5;
    wire token_1_5;
    wire dep_chan_vld_4_5;
    wire [11:0] dep_chan_data_4_5;
    wire token_4_5;
    wire [1:0] proc_6_data_FIFO_blk;
    wire [1:0] proc_6_data_PIPO_blk;
    wire [1:0] proc_6_start_FIFO_blk;
    wire [1:0] proc_6_TLF_FIFO_blk;
    wire [1:0] proc_6_input_sync_blk;
    wire [1:0] proc_6_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_6;
    reg [1:0] proc_dep_vld_vec_6_reg;
    wire [1:0] in_chan_dep_vld_vec_6;
    wire [23:0] in_chan_dep_data_vec_6;
    wire [1:0] token_in_vec_6;
    wire [1:0] out_chan_dep_vld_vec_6;
    wire [11:0] out_chan_dep_data_6;
    wire [1:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_7_6;
    wire [11:0] dep_chan_data_7_6;
    wire token_7_6;
    wire dep_chan_vld_8_6;
    wire [11:0] dep_chan_data_8_6;
    wire token_8_6;
    wire [1:0] proc_7_data_FIFO_blk;
    wire [1:0] proc_7_data_PIPO_blk;
    wire [1:0] proc_7_start_FIFO_blk;
    wire [1:0] proc_7_TLF_FIFO_blk;
    wire [1:0] proc_7_input_sync_blk;
    wire [1:0] proc_7_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_7;
    reg [1:0] proc_dep_vld_vec_7_reg;
    wire [1:0] in_chan_dep_vld_vec_7;
    wire [23:0] in_chan_dep_data_vec_7;
    wire [1:0] token_in_vec_7;
    wire [1:0] out_chan_dep_vld_vec_7;
    wire [11:0] out_chan_dep_data_7;
    wire [1:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_6_7;
    wire [11:0] dep_chan_data_6_7;
    wire token_6_7;
    wire dep_chan_vld_10_7;
    wire [11:0] dep_chan_data_10_7;
    wire token_10_7;
    wire [1:0] proc_8_data_FIFO_blk;
    wire [1:0] proc_8_data_PIPO_blk;
    wire [1:0] proc_8_start_FIFO_blk;
    wire [1:0] proc_8_TLF_FIFO_blk;
    wire [1:0] proc_8_input_sync_blk;
    wire [1:0] proc_8_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_8;
    reg [1:0] proc_dep_vld_vec_8_reg;
    wire [1:0] in_chan_dep_vld_vec_8;
    wire [23:0] in_chan_dep_data_vec_8;
    wire [1:0] token_in_vec_8;
    wire [1:0] out_chan_dep_vld_vec_8;
    wire [11:0] out_chan_dep_data_8;
    wire [1:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_6_8;
    wire [11:0] dep_chan_data_6_8;
    wire token_6_8;
    wire dep_chan_vld_9_8;
    wire [11:0] dep_chan_data_9_8;
    wire token_9_8;
    wire [1:0] proc_9_data_FIFO_blk;
    wire [1:0] proc_9_data_PIPO_blk;
    wire [1:0] proc_9_start_FIFO_blk;
    wire [1:0] proc_9_TLF_FIFO_blk;
    wire [1:0] proc_9_input_sync_blk;
    wire [1:0] proc_9_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_9;
    reg [1:0] proc_dep_vld_vec_9_reg;
    wire [1:0] in_chan_dep_vld_vec_9;
    wire [23:0] in_chan_dep_data_vec_9;
    wire [1:0] token_in_vec_9;
    wire [1:0] out_chan_dep_vld_vec_9;
    wire [11:0] out_chan_dep_data_9;
    wire [1:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_8_9;
    wire [11:0] dep_chan_data_8_9;
    wire token_8_9;
    wire dep_chan_vld_11_9;
    wire [11:0] dep_chan_data_11_9;
    wire token_11_9;
    wire [1:0] proc_10_data_FIFO_blk;
    wire [1:0] proc_10_data_PIPO_blk;
    wire [1:0] proc_10_start_FIFO_blk;
    wire [1:0] proc_10_TLF_FIFO_blk;
    wire [1:0] proc_10_input_sync_blk;
    wire [1:0] proc_10_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_10;
    reg [1:0] proc_dep_vld_vec_10_reg;
    wire [1:0] in_chan_dep_vld_vec_10;
    wire [23:0] in_chan_dep_data_vec_10;
    wire [1:0] token_in_vec_10;
    wire [1:0] out_chan_dep_vld_vec_10;
    wire [11:0] out_chan_dep_data_10;
    wire [1:0] token_out_vec_10;
    wire dl_detect_out_10;
    wire dep_chan_vld_7_10;
    wire [11:0] dep_chan_data_7_10;
    wire token_7_10;
    wire dep_chan_vld_11_10;
    wire [11:0] dep_chan_data_11_10;
    wire token_11_10;
    wire [1:0] proc_11_data_FIFO_blk;
    wire [1:0] proc_11_data_PIPO_blk;
    wire [1:0] proc_11_start_FIFO_blk;
    wire [1:0] proc_11_TLF_FIFO_blk;
    wire [1:0] proc_11_input_sync_blk;
    wire [1:0] proc_11_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_11;
    reg [1:0] proc_dep_vld_vec_11_reg;
    wire [1:0] in_chan_dep_vld_vec_11;
    wire [23:0] in_chan_dep_data_vec_11;
    wire [1:0] token_in_vec_11;
    wire [1:0] out_chan_dep_vld_vec_11;
    wire [11:0] out_chan_dep_data_11;
    wire [1:0] token_out_vec_11;
    wire dl_detect_out_11;
    wire dep_chan_vld_9_11;
    wire [11:0] dep_chan_data_9_11;
    wire token_9_11;
    wire dep_chan_vld_10_11;
    wire [11:0] dep_chan_data_10_11;
    wire token_10_11;
    wire [11:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    reg [11:0] origin;

    reg ap_done_reg_0;// for module Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0.ap_continue;
        end
    end

    reg ap_done_reg_1;// for module Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_1 <= 'b0;
        end
        else begin
            ap_done_reg_1 <= Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0.ap_continue;
        end
    end

    reg ap_done_reg_2;// for module Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_2 <= 'b0;
        end
        else begin
            ap_done_reg_2 <= Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc_U0.ap_continue;
        end
    end

    reg ap_done_reg_3;// for module Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc11_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_3 <= 'b0;
        end
        else begin
            ap_done_reg_3 <= Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc11_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc11_U0.ap_continue;
        end
    end

    reg ap_done_reg_4;// for module Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc12_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_4 <= 'b0;
        end
        else begin
            ap_done_reg_4 <= Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc12_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc12_U0.ap_continue;
        end
    end

    reg ap_done_reg_5;// for module Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc13_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_5 <= 'b0;
        end
        else begin
            ap_done_reg_5 <= Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc13_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc13_U0.ap_continue;
        end
    end

    reg ap_done_reg_6;// for module SystemControl_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_6 <= 'b0;
        end
        else begin
            ap_done_reg_6 <= SystemControl_U0.ap_done & ~SystemControl_U0.ap_continue;
        end
    end

    reg ap_done_reg_7;// for module Send_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_7 <= 'b0;
        end
        else begin
            ap_done_reg_7 <= Send_U0.ap_done & ~Send_U0.ap_continue;
        end
    end

    reg ap_done_reg_8;// for module RoundRobin_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_8 <= 'b0;
        end
        else begin
            ap_done_reg_8 <= RoundRobin_U0.ap_done & ~RoundRobin_U0.ap_continue;
        end
    end

    reg ap_done_reg_9;// for module Receive_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_9 <= 'b0;
        end
        else begin
            ap_done_reg_9 <= Receive_U0.ap_done & ~Receive_U0.ap_continue;
        end
    end

    reg ap_done_reg_10;// for module Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_10 <= 'b0;
        end
        else begin
            ap_done_reg_10 <= Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_U0.ap_continue;
        end
    end

    reg ap_done_reg_11;// for module Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_2_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_11 <= 'b0;
        end
        else begin
            ap_done_reg_11 <= Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_2_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_2_U0.ap_continue;
        end
    end

reg [15:0] trans_in_cnt_0;// for process SystemControl_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_0 <= 16'h0;
    end
    else if (SystemControl_U0.start_write == 1'b1) begin
        trans_in_cnt_0 <= trans_in_cnt_0 + 16'h1;
    end
    else begin
        trans_in_cnt_0 <= trans_in_cnt_0;
    end
end

reg [15:0] trans_out_cnt_0;// for process SystemControl_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_0 <= 16'h0;
    end
    else if (SystemControl_U0.ap_done == 1'b1 && SystemControl_U0.ap_continue == 1'b1) begin
        trans_out_cnt_0 <= trans_out_cnt_0 + 16'h1;
    end
    else begin
        trans_out_cnt_0 <= trans_out_cnt_0;
    end
end

    // Process: SystemControl_U0
    TopPL_hls_deadlock_detect_unit #(12, 0, 3, 3) TopPL_hls_deadlock_detect_unit_0 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0 | (~SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_315_4_fu_161.syscontrol_0_blk_n);
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0 | (~start_for_Send_U0_U.if_full_n & SystemControl_U0.ap_start & ~SystemControl_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~start_for_Send_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0;
    assign proc_0_output_sync_blk[0] = 1'b0 | (ap_done_reg_6 & SystemControl_U0.ap_done & ~Send_U0.ap_done);
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    assign proc_0_data_FIFO_blk[1] = 1'b0 | (~SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_315_4_fu_161.syscontrol_1_blk_n);
    assign proc_0_data_PIPO_blk[1] = 1'b0;
    assign proc_0_start_FIFO_blk[1] = 1'b0;
    assign proc_0_TLF_FIFO_blk[1] = 1'b0;
    assign proc_0_input_sync_blk[1] = 1'b0 | (ap_sync_SystemControl_U0_ap_ready & SystemControl_U0.ap_idle & ~ap_sync_RoundRobin_U0_ap_ready);
    assign proc_0_output_sync_blk[1] = 1'b0 | (ap_done_reg_6 & SystemControl_U0.ap_done & ~RoundRobin_U0.ap_done);
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (proc_0_data_FIFO_blk[1] | proc_0_data_PIPO_blk[1] | proc_0_start_FIFO_blk[1] | proc_0_TLF_FIFO_blk[1] | proc_0_input_sync_blk[1] | proc_0_output_sync_blk[1]);
    assign proc_0_data_FIFO_blk[2] = 1'b0 | (~SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_315_4_fu_161.syscontrol_2_blk_n) | (~SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_304_3_fu_142.convSet_0_blk_n) | (~SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_304_3_fu_142.convSet_1_blk_n);
    assign proc_0_data_PIPO_blk[2] = 1'b0;
    assign proc_0_start_FIFO_blk[2] = 1'b0 | (~start_for_Receive_U0_U.if_full_n & SystemControl_U0.ap_start & ~SystemControl_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~start_for_Receive_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[2] = 1'b0;
    assign proc_0_input_sync_blk[2] = 1'b0;
    assign proc_0_output_sync_blk[2] = 1'b0 | (ap_done_reg_6 & SystemControl_U0.ap_done & ~Receive_U0.ap_done);
    assign proc_dep_vld_vec_0[2] = dl_detect_out ? proc_dep_vld_vec_0_reg[2] : (proc_0_data_FIFO_blk[2] | proc_0_data_PIPO_blk[2] | proc_0_start_FIFO_blk[2] | proc_0_TLF_FIFO_blk[2] | proc_0_input_sync_blk[2] | proc_0_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[11 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_4_0;
    assign in_chan_dep_data_vec_0[23 : 12] = dep_chan_data_4_0;
    assign token_in_vec_0[1] = token_4_0;
    assign in_chan_dep_vld_vec_0[2] = dep_chan_vld_5_0;
    assign in_chan_dep_data_vec_0[35 : 24] = dep_chan_data_5_0;
    assign token_in_vec_0[2] = token_5_0;
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[0];
    assign dep_chan_vld_0_4 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_4 = out_chan_dep_data_0;
    assign token_0_4 = token_out_vec_0[1];
    assign dep_chan_vld_0_5 = out_chan_dep_vld_vec_0[2];
    assign dep_chan_data_0_5 = out_chan_dep_data_0;
    assign token_0_5 = token_out_vec_0[2];

    // Process: Send_U0
    TopPL_hls_deadlock_detect_unit #(12, 1, 3, 3) TopPL_hls_deadlock_detect_unit_1 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0 | (~Send_U0.syscontrol_0_blk_n);
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0 | (~start_for_Send_U0_U.if_empty_n & Send_U0.ap_idle & ~start_for_Send_U0_U.if_write);
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0;
    assign proc_1_output_sync_blk[0] = 1'b0 | (ap_done_reg_7 & Send_U0.ap_done & ~SystemControl_U0.ap_done);
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0 | (~Send_U0.grp_send2AIE_3_fu_118.grp_send2AIE_3_Pipeline_VITIS_LOOP_112_2_fu_146.send_fifo_0_blk_n) | (~Send_U0.grp_send2AIE_3_fu_118.grp_send2AIE_3_Pipeline_VITIS_LOOP_112_2_fu_146.send_fifo_0_blk_n);
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0;
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0;
    assign proc_1_output_sync_blk[1] = 1'b0 | (ap_done_reg_7 & Send_U0.ap_done & ~RoundRobin_U0.ap_done);
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    assign proc_1_data_FIFO_blk[2] = 1'b0;
    assign proc_1_data_PIPO_blk[2] = 1'b0;
    assign proc_1_start_FIFO_blk[2] = 1'b0;
    assign proc_1_TLF_FIFO_blk[2] = 1'b0;
    assign proc_1_input_sync_blk[2] = 1'b0;
    assign proc_1_output_sync_blk[2] = 1'b0 | (ap_done_reg_7 & Send_U0.ap_done & ~Receive_U0.ap_done);
    assign proc_dep_vld_vec_1[2] = dl_detect_out ? proc_dep_vld_vec_1_reg[2] : (proc_1_data_FIFO_blk[2] | proc_1_data_PIPO_blk[2] | proc_1_start_FIFO_blk[2] | proc_1_TLF_FIFO_blk[2] | proc_1_input_sync_blk[2] | proc_1_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[11 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_4_1;
    assign in_chan_dep_data_vec_1[23 : 12] = dep_chan_data_4_1;
    assign token_in_vec_1[1] = token_4_1;
    assign in_chan_dep_vld_vec_1[2] = dep_chan_vld_5_1;
    assign in_chan_dep_data_vec_1[35 : 24] = dep_chan_data_5_1;
    assign token_in_vec_1[2] = token_5_1;
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[0];
    assign dep_chan_vld_1_4 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_4 = out_chan_dep_data_1;
    assign token_1_4 = token_out_vec_1[1];
    assign dep_chan_vld_1_5 = out_chan_dep_vld_vec_1[2];
    assign dep_chan_data_1_5 = out_chan_dep_data_1;
    assign token_1_5 = token_out_vec_1[2];

    // Process: Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_U0
    TopPL_hls_deadlock_detect_unit #(12, 2, 1, 1) TopPL_hls_deadlock_detect_unit_2 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0;
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0;
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.ap_sync_send2AIE_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.ap_sync_send2AIE_2_U0_ap_ready);
    assign proc_2_output_sync_blk[0] = 1'b0 | (ap_done_reg_10 & Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_2_U0.ap_done);
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[11 : 0] = dep_chan_data_3_2;
    assign token_in_vec_2[0] = token_3_2;
    assign dep_chan_vld_2_3 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_3 = out_chan_dep_data_2;
    assign token_2_3 = token_out_vec_2[0];

    // Process: Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_2_U0
    TopPL_hls_deadlock_detect_unit #(12, 3, 1, 1) TopPL_hls_deadlock_detect_unit_3 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0;
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0;
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.ap_sync_send2AIE_2_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_2_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.ap_sync_send2AIE_U0_ap_ready);
    assign proc_3_output_sync_blk[0] = 1'b0 | (ap_done_reg_11 & Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_2_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_U0.ap_done);
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_2_3;
    assign in_chan_dep_data_vec_3[11 : 0] = dep_chan_data_2_3;
    assign token_in_vec_3[0] = token_2_3;
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[0];

    // Process: RoundRobin_U0
    TopPL_hls_deadlock_detect_unit #(12, 4, 3, 3) TopPL_hls_deadlock_detect_unit_4 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0 | (~RoundRobin_U0.syscontrol_1_blk_n);
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0;
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0 | (ap_sync_RoundRobin_U0_ap_ready & RoundRobin_U0.ap_idle & ~ap_sync_SystemControl_U0_ap_ready);
    assign proc_4_output_sync_blk[0] = 1'b0 | (ap_done_reg_8 & RoundRobin_U0.ap_done & ~SystemControl_U0.ap_done);
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    assign proc_4_data_FIFO_blk[1] = 1'b0 | (~RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_150_3_fu_240.send_fifo_0_blk_n) | (~RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_142_2_fu_249.send_fifo_1_blk_n);
    assign proc_4_data_PIPO_blk[1] = 1'b0;
    assign proc_4_start_FIFO_blk[1] = 1'b0;
    assign proc_4_TLF_FIFO_blk[1] = 1'b0;
    assign proc_4_input_sync_blk[1] = 1'b0;
    assign proc_4_output_sync_blk[1] = 1'b0 | (ap_done_reg_8 & RoundRobin_U0.ap_done & ~Send_U0.ap_done);
    assign proc_dep_vld_vec_4[1] = dl_detect_out ? proc_dep_vld_vec_4_reg[1] : (proc_4_data_FIFO_blk[1] | proc_4_data_PIPO_blk[1] | proc_4_start_FIFO_blk[1] | proc_4_TLF_FIFO_blk[1] | proc_4_input_sync_blk[1] | proc_4_output_sync_blk[1]);
    assign proc_4_data_FIFO_blk[2] = 1'b0 | (~RoundRobin_U0.receive_fifo_0_blk_n) | (~RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_256_3_fu_258.receive_fifo_1_blk_n);
    assign proc_4_data_PIPO_blk[2] = 1'b0;
    assign proc_4_start_FIFO_blk[2] = 1'b0;
    assign proc_4_TLF_FIFO_blk[2] = 1'b0;
    assign proc_4_input_sync_blk[2] = 1'b0;
    assign proc_4_output_sync_blk[2] = 1'b0 | (ap_done_reg_8 & RoundRobin_U0.ap_done & ~Receive_U0.ap_done);
    assign proc_dep_vld_vec_4[2] = dl_detect_out ? proc_dep_vld_vec_4_reg[2] : (proc_4_data_FIFO_blk[2] | proc_4_data_PIPO_blk[2] | proc_4_start_FIFO_blk[2] | proc_4_TLF_FIFO_blk[2] | proc_4_input_sync_blk[2] | proc_4_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_0_4;
    assign in_chan_dep_data_vec_4[11 : 0] = dep_chan_data_0_4;
    assign token_in_vec_4[0] = token_0_4;
    assign in_chan_dep_vld_vec_4[1] = dep_chan_vld_1_4;
    assign in_chan_dep_data_vec_4[23 : 12] = dep_chan_data_1_4;
    assign token_in_vec_4[1] = token_1_4;
    assign in_chan_dep_vld_vec_4[2] = dep_chan_vld_5_4;
    assign in_chan_dep_data_vec_4[35 : 24] = dep_chan_data_5_4;
    assign token_in_vec_4[2] = token_5_4;
    assign dep_chan_vld_4_0 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_0 = out_chan_dep_data_4;
    assign token_4_0 = token_out_vec_4[0];
    assign dep_chan_vld_4_1 = out_chan_dep_vld_vec_4[1];
    assign dep_chan_data_4_1 = out_chan_dep_data_4;
    assign token_4_1 = token_out_vec_4[1];
    assign dep_chan_vld_4_5 = out_chan_dep_vld_vec_4[2];
    assign dep_chan_data_4_5 = out_chan_dep_data_4;
    assign token_4_5 = token_out_vec_4[2];

    // Process: Receive_U0
    TopPL_hls_deadlock_detect_unit #(12, 5, 3, 3) TopPL_hls_deadlock_detect_unit_5 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_5_data_FIFO_blk[0] = 1'b0 | (~Receive_U0.syscontrol_2_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc11_U0.convSet_0_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc13_U0.convSet_1_blk_n);
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0 | (~start_for_Receive_U0_U.if_empty_n & Receive_U0.ap_idle & ~start_for_Receive_U0_U.if_write);
    assign proc_5_TLF_FIFO_blk[0] = 1'b0;
    assign proc_5_input_sync_blk[0] = 1'b0;
    assign proc_5_output_sync_blk[0] = 1'b0 | (ap_done_reg_9 & Receive_U0.ap_done & ~SystemControl_U0.ap_done);
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    assign proc_5_data_FIFO_blk[1] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0.grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158.receive_fifo_0_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0.grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158.receive_fifo_1_blk_n);
    assign proc_5_data_PIPO_blk[1] = 1'b0;
    assign proc_5_start_FIFO_blk[1] = 1'b0;
    assign proc_5_TLF_FIFO_blk[1] = 1'b0;
    assign proc_5_input_sync_blk[1] = 1'b0;
    assign proc_5_output_sync_blk[1] = 1'b0 | (ap_done_reg_9 & Receive_U0.ap_done & ~RoundRobin_U0.ap_done);
    assign proc_dep_vld_vec_5[1] = dl_detect_out ? proc_dep_vld_vec_5_reg[1] : (proc_5_data_FIFO_blk[1] | proc_5_data_PIPO_blk[1] | proc_5_start_FIFO_blk[1] | proc_5_TLF_FIFO_blk[1] | proc_5_input_sync_blk[1] | proc_5_output_sync_blk[1]);
    assign proc_5_data_FIFO_blk[2] = 1'b0;
    assign proc_5_data_PIPO_blk[2] = 1'b0;
    assign proc_5_start_FIFO_blk[2] = 1'b0;
    assign proc_5_TLF_FIFO_blk[2] = 1'b0;
    assign proc_5_input_sync_blk[2] = 1'b0;
    assign proc_5_output_sync_blk[2] = 1'b0 | (ap_done_reg_9 & Receive_U0.ap_done & ~Send_U0.ap_done);
    assign proc_dep_vld_vec_5[2] = dl_detect_out ? proc_dep_vld_vec_5_reg[2] : (proc_5_data_FIFO_blk[2] | proc_5_data_PIPO_blk[2] | proc_5_start_FIFO_blk[2] | proc_5_TLF_FIFO_blk[2] | proc_5_input_sync_blk[2] | proc_5_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_0_5;
    assign in_chan_dep_data_vec_5[11 : 0] = dep_chan_data_0_5;
    assign token_in_vec_5[0] = token_0_5;
    assign in_chan_dep_vld_vec_5[1] = dep_chan_vld_1_5;
    assign in_chan_dep_data_vec_5[23 : 12] = dep_chan_data_1_5;
    assign token_in_vec_5[1] = token_1_5;
    assign in_chan_dep_vld_vec_5[2] = dep_chan_vld_4_5;
    assign in_chan_dep_data_vec_5[35 : 24] = dep_chan_data_4_5;
    assign token_in_vec_5[2] = token_4_5;
    assign dep_chan_vld_5_0 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_0 = out_chan_dep_data_5;
    assign token_5_0 = token_out_vec_5[0];
    assign dep_chan_vld_5_4 = out_chan_dep_vld_vec_5[1];
    assign dep_chan_data_5_4 = out_chan_dep_data_5;
    assign token_5_4 = token_out_vec_5[1];
    assign dep_chan_vld_5_1 = out_chan_dep_vld_vec_5[2];
    assign dep_chan_data_5_1 = out_chan_dep_data_5;
    assign token_5_1 = token_out_vec_5[2];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0
    TopPL_hls_deadlock_detect_unit #(12, 6, 2, 2) TopPL_hls_deadlock_detect_unit_6 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_6_data_FIFO_blk[0] = 1'b0;
    assign proc_6_data_PIPO_blk[0] = 1'b0;
    assign proc_6_start_FIFO_blk[0] = 1'b0;
    assign proc_6_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.conv0_channel_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0.ap_done & ap_done_reg_0 & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.conv0_channel_U.if_read);
    assign proc_6_input_sync_blk[0] = 1'b0;
    assign proc_6_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    assign proc_6_data_FIFO_blk[1] = 1'b0;
    assign proc_6_data_PIPO_blk[1] = 1'b0;
    assign proc_6_start_FIFO_blk[1] = 1'b0;
    assign proc_6_TLF_FIFO_blk[1] = 1'b0;
    assign proc_6_input_sync_blk[1] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_1_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.ap_sync_receive4AIE_U0_ap_ready);
    assign proc_6_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_6[1] = dl_detect_out ? proc_dep_vld_vec_6_reg[1] : (proc_6_data_FIFO_blk[1] | proc_6_data_PIPO_blk[1] | proc_6_start_FIFO_blk[1] | proc_6_TLF_FIFO_blk[1] | proc_6_input_sync_blk[1] | proc_6_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_7_6;
    assign in_chan_dep_data_vec_6[11 : 0] = dep_chan_data_7_6;
    assign token_in_vec_6[0] = token_7_6;
    assign in_chan_dep_vld_vec_6[1] = dep_chan_vld_8_6;
    assign in_chan_dep_data_vec_6[23 : 12] = dep_chan_data_8_6;
    assign token_in_vec_6[1] = token_8_6;
    assign dep_chan_vld_6_8 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_8 = out_chan_dep_data_6;
    assign token_6_8 = token_out_vec_6[0];
    assign dep_chan_vld_6_7 = out_chan_dep_vld_vec_6[1];
    assign dep_chan_data_6_7 = out_chan_dep_data_6;
    assign token_6_7 = token_out_vec_6[1];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0
    TopPL_hls_deadlock_detect_unit #(12, 7, 2, 2) TopPL_hls_deadlock_detect_unit_7 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_7),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_7),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_7),
        .token_in_vec(token_in_vec_7),
        .dl_detect_in(dl_detect_out),
        .origin(origin[7]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_7),
        .out_chan_dep_data(out_chan_dep_data_7),
        .token_out_vec(token_out_vec_7),
        .dl_detect_out(dl_in_vec[7]));

    assign proc_7_data_FIFO_blk[0] = 1'b0;
    assign proc_7_data_PIPO_blk[0] = 1'b0;
    assign proc_7_start_FIFO_blk[0] = 1'b0;
    assign proc_7_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.conv1_channel_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0.ap_done & ap_done_reg_1 & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.conv1_channel_U.if_read);
    assign proc_7_input_sync_blk[0] = 1'b0;
    assign proc_7_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (proc_7_data_FIFO_blk[0] | proc_7_data_PIPO_blk[0] | proc_7_start_FIFO_blk[0] | proc_7_TLF_FIFO_blk[0] | proc_7_input_sync_blk[0] | proc_7_output_sync_blk[0]);
    assign proc_7_data_FIFO_blk[1] = 1'b0;
    assign proc_7_data_PIPO_blk[1] = 1'b0;
    assign proc_7_start_FIFO_blk[1] = 1'b0;
    assign proc_7_TLF_FIFO_blk[1] = 1'b0;
    assign proc_7_input_sync_blk[1] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.ap_sync_receive4AIE_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.receive4AIE_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready);
    assign proc_7_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_7[1] = dl_detect_out ? proc_dep_vld_vec_7_reg[1] : (proc_7_data_FIFO_blk[1] | proc_7_data_PIPO_blk[1] | proc_7_start_FIFO_blk[1] | proc_7_TLF_FIFO_blk[1] | proc_7_input_sync_blk[1] | proc_7_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_6_7;
    assign in_chan_dep_data_vec_7[11 : 0] = dep_chan_data_6_7;
    assign token_in_vec_7[0] = token_6_7;
    assign in_chan_dep_vld_vec_7[1] = dep_chan_vld_10_7;
    assign in_chan_dep_data_vec_7[23 : 12] = dep_chan_data_10_7;
    assign token_in_vec_7[1] = token_10_7;
    assign dep_chan_vld_7_10 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_10 = out_chan_dep_data_7;
    assign token_7_10 = token_out_vec_7[0];
    assign dep_chan_vld_7_6 = out_chan_dep_vld_vec_7[1];
    assign dep_chan_data_7_6 = out_chan_dep_data_7;
    assign token_7_6 = token_out_vec_7[1];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc_U0
    TopPL_hls_deadlock_detect_unit #(12, 8, 2, 2) TopPL_hls_deadlock_detect_unit_8 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_8),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_8),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_8),
        .token_in_vec(token_in_vec_8),
        .dl_detect_in(dl_detect_out),
        .origin(origin[8]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_8),
        .out_chan_dep_data(out_chan_dep_data_8),
        .token_out_vec(token_out_vec_8),
        .dl_detect_out(dl_in_vec[8]));

    assign proc_8_data_FIFO_blk[0] = 1'b0;
    assign proc_8_data_PIPO_blk[0] = 1'b0;
    assign proc_8_start_FIFO_blk[0] = 1'b0;
    assign proc_8_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.conv0_channel_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.conv0_channel_U.if_write);
    assign proc_8_input_sync_blk[0] = 1'b0;
    assign proc_8_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (proc_8_data_FIFO_blk[0] | proc_8_data_PIPO_blk[0] | proc_8_start_FIFO_blk[0] | proc_8_TLF_FIFO_blk[0] | proc_8_input_sync_blk[0] | proc_8_output_sync_blk[0]);
    assign proc_8_data_FIFO_blk[1] = 1'b0;
    assign proc_8_data_PIPO_blk[1] = 1'b0;
    assign proc_8_start_FIFO_blk[1] = 1'b0;
    assign proc_8_TLF_FIFO_blk[1] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.empty_92_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc_U0.ap_done & ap_done_reg_2 & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.empty_92_U.if_read);
    assign proc_8_input_sync_blk[1] = 1'b0;
    assign proc_8_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_8[1] = dl_detect_out ? proc_dep_vld_vec_8_reg[1] : (proc_8_data_FIFO_blk[1] | proc_8_data_PIPO_blk[1] | proc_8_start_FIFO_blk[1] | proc_8_TLF_FIFO_blk[1] | proc_8_input_sync_blk[1] | proc_8_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_6_8;
    assign in_chan_dep_data_vec_8[11 : 0] = dep_chan_data_6_8;
    assign token_in_vec_8[0] = token_6_8;
    assign in_chan_dep_vld_vec_8[1] = dep_chan_vld_9_8;
    assign in_chan_dep_data_vec_8[23 : 12] = dep_chan_data_9_8;
    assign token_in_vec_8[1] = token_9_8;
    assign dep_chan_vld_8_6 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_6 = out_chan_dep_data_8;
    assign token_8_6 = token_out_vec_8[0];
    assign dep_chan_vld_8_9 = out_chan_dep_vld_vec_8[1];
    assign dep_chan_data_8_9 = out_chan_dep_data_8;
    assign token_8_9 = token_out_vec_8[1];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc11_U0
    TopPL_hls_deadlock_detect_unit #(12, 9, 2, 2) TopPL_hls_deadlock_detect_unit_9 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_9),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_9),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_9),
        .token_in_vec(token_in_vec_9),
        .dl_detect_in(dl_detect_out),
        .origin(origin[9]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_9),
        .out_chan_dep_data(out_chan_dep_data_9),
        .token_out_vec(token_out_vec_9),
        .dl_detect_out(dl_in_vec[9]));

    assign proc_9_data_FIFO_blk[0] = 1'b0;
    assign proc_9_data_PIPO_blk[0] = 1'b0;
    assign proc_9_start_FIFO_blk[0] = 1'b0;
    assign proc_9_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.empty_92_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc11_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.empty_92_U.if_write);
    assign proc_9_input_sync_blk[0] = 1'b0;
    assign proc_9_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (proc_9_data_FIFO_blk[0] | proc_9_data_PIPO_blk[0] | proc_9_start_FIFO_blk[0] | proc_9_TLF_FIFO_blk[0] | proc_9_input_sync_blk[0] | proc_9_output_sync_blk[0]);
    assign proc_9_data_FIFO_blk[1] = 1'b0;
    assign proc_9_data_PIPO_blk[1] = 1'b0;
    assign proc_9_start_FIFO_blk[1] = 1'b0;
    assign proc_9_TLF_FIFO_blk[1] = 1'b0;
    assign proc_9_input_sync_blk[1] = 1'b0;
    assign proc_9_output_sync_blk[1] = 1'b0 | (ap_done_reg_3 & Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc11_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc13_U0.ap_done);
    assign proc_dep_vld_vec_9[1] = dl_detect_out ? proc_dep_vld_vec_9_reg[1] : (proc_9_data_FIFO_blk[1] | proc_9_data_PIPO_blk[1] | proc_9_start_FIFO_blk[1] | proc_9_TLF_FIFO_blk[1] | proc_9_input_sync_blk[1] | proc_9_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_8_9;
    assign in_chan_dep_data_vec_9[11 : 0] = dep_chan_data_8_9;
    assign token_in_vec_9[0] = token_8_9;
    assign in_chan_dep_vld_vec_9[1] = dep_chan_vld_11_9;
    assign in_chan_dep_data_vec_9[23 : 12] = dep_chan_data_11_9;
    assign token_in_vec_9[1] = token_11_9;
    assign dep_chan_vld_9_8 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_8 = out_chan_dep_data_9;
    assign token_9_8 = token_out_vec_9[0];
    assign dep_chan_vld_9_11 = out_chan_dep_vld_vec_9[1];
    assign dep_chan_data_9_11 = out_chan_dep_data_9;
    assign token_9_11 = token_out_vec_9[1];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc12_U0
    TopPL_hls_deadlock_detect_unit #(12, 10, 2, 2) TopPL_hls_deadlock_detect_unit_10 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_10),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_10),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_10),
        .token_in_vec(token_in_vec_10),
        .dl_detect_in(dl_detect_out),
        .origin(origin[10]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_10),
        .out_chan_dep_data(out_chan_dep_data_10),
        .token_out_vec(token_out_vec_10),
        .dl_detect_out(dl_in_vec[10]));

    assign proc_10_data_FIFO_blk[0] = 1'b0;
    assign proc_10_data_PIPO_blk[0] = 1'b0;
    assign proc_10_start_FIFO_blk[0] = 1'b0;
    assign proc_10_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.conv1_channel_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc12_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.conv1_channel_U.if_write);
    assign proc_10_input_sync_blk[0] = 1'b0;
    assign proc_10_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_10[0] = dl_detect_out ? proc_dep_vld_vec_10_reg[0] : (proc_10_data_FIFO_blk[0] | proc_10_data_PIPO_blk[0] | proc_10_start_FIFO_blk[0] | proc_10_TLF_FIFO_blk[0] | proc_10_input_sync_blk[0] | proc_10_output_sync_blk[0]);
    assign proc_10_data_FIFO_blk[1] = 1'b0;
    assign proc_10_data_PIPO_blk[1] = 1'b0;
    assign proc_10_start_FIFO_blk[1] = 1'b0;
    assign proc_10_TLF_FIFO_blk[1] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.empty_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc12_U0.ap_done & ap_done_reg_4 & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.empty_U.if_read);
    assign proc_10_input_sync_blk[1] = 1'b0;
    assign proc_10_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_10[1] = dl_detect_out ? proc_dep_vld_vec_10_reg[1] : (proc_10_data_FIFO_blk[1] | proc_10_data_PIPO_blk[1] | proc_10_start_FIFO_blk[1] | proc_10_TLF_FIFO_blk[1] | proc_10_input_sync_blk[1] | proc_10_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_10_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_10_reg <= proc_dep_vld_vec_10;
        end
    end
    assign in_chan_dep_vld_vec_10[0] = dep_chan_vld_7_10;
    assign in_chan_dep_data_vec_10[11 : 0] = dep_chan_data_7_10;
    assign token_in_vec_10[0] = token_7_10;
    assign in_chan_dep_vld_vec_10[1] = dep_chan_vld_11_10;
    assign in_chan_dep_data_vec_10[23 : 12] = dep_chan_data_11_10;
    assign token_in_vec_10[1] = token_11_10;
    assign dep_chan_vld_10_7 = out_chan_dep_vld_vec_10[0];
    assign dep_chan_data_10_7 = out_chan_dep_data_10;
    assign token_10_7 = token_out_vec_10[0];
    assign dep_chan_vld_10_11 = out_chan_dep_vld_vec_10[1];
    assign dep_chan_data_10_11 = out_chan_dep_data_10;
    assign token_10_11 = token_out_vec_10[1];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc13_U0
    TopPL_hls_deadlock_detect_unit #(12, 11, 2, 2) TopPL_hls_deadlock_detect_unit_11 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_11),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_11),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_11),
        .token_in_vec(token_in_vec_11),
        .dl_detect_in(dl_detect_out),
        .origin(origin[11]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_11),
        .out_chan_dep_data(out_chan_dep_data_11),
        .token_out_vec(token_out_vec_11),
        .dl_detect_out(dl_in_vec[11]));

    assign proc_11_data_FIFO_blk[0] = 1'b0;
    assign proc_11_data_PIPO_blk[0] = 1'b0;
    assign proc_11_start_FIFO_blk[0] = 1'b0;
    assign proc_11_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.empty_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc13_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.empty_U.if_write);
    assign proc_11_input_sync_blk[0] = 1'b0;
    assign proc_11_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_11[0] = dl_detect_out ? proc_dep_vld_vec_11_reg[0] : (proc_11_data_FIFO_blk[0] | proc_11_data_PIPO_blk[0] | proc_11_start_FIFO_blk[0] | proc_11_TLF_FIFO_blk[0] | proc_11_input_sync_blk[0] | proc_11_output_sync_blk[0]);
    assign proc_11_data_FIFO_blk[1] = 1'b0;
    assign proc_11_data_PIPO_blk[1] = 1'b0;
    assign proc_11_start_FIFO_blk[1] = 1'b0;
    assign proc_11_TLF_FIFO_blk[1] = 1'b0;
    assign proc_11_input_sync_blk[1] = 1'b0;
    assign proc_11_output_sync_blk[1] = 1'b0 | (ap_done_reg_5 & Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc13_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0.Block_newFuncRoot_proc_proc11_U0.ap_done);
    assign proc_dep_vld_vec_11[1] = dl_detect_out ? proc_dep_vld_vec_11_reg[1] : (proc_11_data_FIFO_blk[1] | proc_11_data_PIPO_blk[1] | proc_11_start_FIFO_blk[1] | proc_11_TLF_FIFO_blk[1] | proc_11_input_sync_blk[1] | proc_11_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_11_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_11_reg <= proc_dep_vld_vec_11;
        end
    end
    assign in_chan_dep_vld_vec_11[0] = dep_chan_vld_9_11;
    assign in_chan_dep_data_vec_11[11 : 0] = dep_chan_data_9_11;
    assign token_in_vec_11[0] = token_9_11;
    assign in_chan_dep_vld_vec_11[1] = dep_chan_vld_10_11;
    assign in_chan_dep_data_vec_11[23 : 12] = dep_chan_data_10_11;
    assign token_in_vec_11[1] = token_10_11;
    assign dep_chan_vld_11_10 = out_chan_dep_vld_vec_11[0];
    assign dep_chan_data_11_10 = out_chan_dep_data_11;
    assign token_11_10 = token_out_vec_11[0];
    assign dep_chan_vld_11_9 = out_chan_dep_vld_vec_11[1];
    assign dep_chan_data_11_9 = out_chan_dep_data_11;
    assign token_11_9 = token_out_vec_11[1];


`include "TopPL_hls_deadlock_report_unit.vh"
