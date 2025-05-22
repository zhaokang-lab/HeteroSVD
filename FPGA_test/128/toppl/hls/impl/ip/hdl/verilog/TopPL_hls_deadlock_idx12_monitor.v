`timescale 1 ns / 1 ps

module TopPL_hls_deadlock_idx12_monitor ( // for module TopPL_TopPL_inst.Receive_U0.grp_dataflow_parent_loop_proc10_fu_100.dataflow_in_loop_VITIS_LOOP_220_2_1_U0
    input wire clock,
    input wire reset,
    input wire [11:0] axis_block_sigs,
    input wire [32:0] inst_idle_sigs,
    input wire [13:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx13_block;
wire idx15_block;
wire [5:0] process_idle_vec;
wire [5:0] process_chan_block_vec;
wire [5:0] process_axis_block_vec;
wire df_has_axis_block;
wire all_process_stop;

assign block = monitor_find_block;
assign process_axis_block_vec[0] = idx13_block & (1'b0 | axis_block_sigs[6] | axis_block_sigs[7]);
assign process_idle_vec[0] = inst_idle_sigs[8];
assign process_chan_block_vec[0] = inst_block_sigs[8];
assign process_axis_block_vec[1] = idx15_block & (1'b0 | axis_block_sigs[8] | axis_block_sigs[9]);
assign process_idle_vec[1] = inst_idle_sigs[9];
assign process_chan_block_vec[1] = inst_block_sigs[9];
assign process_axis_block_vec[2] = 1'b0;
assign process_idle_vec[2] = inst_idle_sigs[10];
assign process_chan_block_vec[2] = inst_block_sigs[10];
assign process_axis_block_vec[3] = 1'b0;
assign process_idle_vec[3] = inst_idle_sigs[11];
assign process_chan_block_vec[3] = inst_block_sigs[11];
assign process_axis_block_vec[4] = 1'b0;
assign process_idle_vec[4] = inst_idle_sigs[12];
assign process_chan_block_vec[4] = inst_block_sigs[12];
assign process_axis_block_vec[5] = 1'b0;
assign process_idle_vec[5] = inst_idle_sigs[13];
assign process_chan_block_vec[5] = inst_block_sigs[13];
assign df_has_axis_block = |{process_axis_block_vec};
assign all_process_stop = (process_idle_vec[0] | process_chan_block_vec[0] | process_axis_block_vec[0]) & (process_idle_vec[1] | process_chan_block_vec[1] | process_axis_block_vec[1]) & (process_idle_vec[2] | process_chan_block_vec[2] | process_axis_block_vec[2]) & (process_idle_vec[3] | process_chan_block_vec[3] | process_axis_block_vec[3]) & (process_idle_vec[4] | process_chan_block_vec[4] | process_axis_block_vec[4]) & (process_idle_vec[5] | process_chan_block_vec[5] | process_axis_block_vec[5]);

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (df_has_axis_block == 1'b1 && all_process_stop == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end


// instant sub module
 TopPL_hls_deadlock_idx13_monitor TopPL_hls_deadlock_idx13_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx13_block)
);

 TopPL_hls_deadlock_idx15_monitor TopPL_hls_deadlock_idx15_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx15_block)
);

endmodule
