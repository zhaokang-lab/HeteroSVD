`timescale 1 ns / 1 ps

module TopPL_hls_deadlock_idx2_monitor ( // for module TopPL_TopPL_inst.Send_U0.grp_dataflow_parent_loop_proc_fu_94
    input wire clock,
    input wire reset,
    input wire [11:0] axis_block_sigs,
    input wire [32:0] inst_idle_sigs,
    input wire [13:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx3_block;
wire [0:0] process_idle_vec;
wire [0:0] process_chan_block_vec;
wire [0:0] process_axis_block_vec;
wire df_has_axis_block;
wire all_process_stop;

assign block = monitor_find_block;
assign process_axis_block_vec[0] = idx3_block & (1'b0 | axis_block_sigs[1] | axis_block_sigs[0] | axis_block_sigs[3] | axis_block_sigs[2]);
assign process_idle_vec[0] = inst_idle_sigs[4];
assign process_chan_block_vec[0] = inst_block_sigs[4];
assign df_has_axis_block = |{process_axis_block_vec};
assign all_process_stop = (process_idle_vec[0] | process_chan_block_vec[0] | process_axis_block_vec[0]);

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (df_has_axis_block == 1'b1 && all_process_stop == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end


// instant sub module
 TopPL_hls_deadlock_idx3_monitor TopPL_hls_deadlock_idx3_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx3_block)
);

endmodule
