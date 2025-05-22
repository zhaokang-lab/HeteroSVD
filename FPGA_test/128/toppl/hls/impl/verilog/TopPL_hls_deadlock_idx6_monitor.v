`timescale 1 ns / 1 ps

module TopPL_hls_deadlock_idx6_monitor ( // for module TopPL_TopPL_inst.Send_U0.grp_dataflow_parent_loop_proc_fu_94.dataflow_in_loop_VITIS_LOOP_172_2_U0.send2AIE_2_U0
    input wire clock,
    input wire reset,
    input wire [11:0] axis_block_sigs,
    input wire [32:0] inst_idle_sigs,
    input wire [13:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx7_block;
wire sub_parallel_block;
wire all_sub_parallel_has_block;
wire all_sub_single_has_block;
wire cur_axis_has_block;
wire seq_is_axis_block;

assign block = monitor_find_block;
assign idx7_block = axis_block_sigs[3];
assign all_sub_parallel_has_block = 1'b0;
assign all_sub_single_has_block = 1'b0 | (idx7_block & (axis_block_sigs[3]));
assign cur_axis_has_block = 1'b0 | axis_block_sigs[2];
assign seq_is_axis_block = all_sub_parallel_has_block | all_sub_single_has_block | cur_axis_has_block;

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (seq_is_axis_block == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end


// instant sub module
endmodule
