`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2020 12:09:30 AM
// Design Name: 
// Module Name: top_synth
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_synth(
    input i_clk_100Mhz,
    input i_reset,
    output led0_b
    );
 
 wire [13:0]Q_val;
    
ctr_delay_macrocell U_ctr_delay_macrocell (
    .i_rst_ctr0(~i_reset),
    .i_ck_rcosc_ctr0(i_clk_100Mhz),
    .i_clk_source_sel_ctr0(2'b00),
    .i_fun_sel_ctr0(2'b01),
    .i_mode_sel_ctr0(2'b10),
    .i_compare_ctr0(14'd5),
    .o_ctr_end_ctr0(led0_b),
    .o_current_val_ctr0(Q_val)
);



ila_0 your_instance_name (
	.clk(i_clk_100Mhz), // input wire clk
	.probe0(Q_val) // input wire [13:0] probe0
);
    
endmodule
