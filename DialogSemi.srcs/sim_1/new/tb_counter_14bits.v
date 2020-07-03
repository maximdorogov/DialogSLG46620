`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2020 02:48:54 PM
// Design Name: 
// Module Name: tb_counter_14bits
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


module tb_counter_14bits(

    );
    
    localparam DELAY = 2'b00;
    localparam COUNTER = 2'b01;
  
    localparam POS_EDGE_MODE = 2'b10;
    localparam NEG_EDGE_MODE = 2'b01;  
    localparam HIGH_LVLRST_MODE = 2'b11;
   
    reg clk, DLYIN, RESETIN;
    wire ctr_end_output, edge_detect, DLYOUT, OUT;
    wire [13:0]Q;
    wire [1:0]cell_function = COUNTER;
    wire [1:0]mode    = HIGH_LVLRST_MODE;

    
    counter_14bits CTR_DLY_0(
       
       .i_rst(RESETIN), 
       
       .i_ck_rcosc(clk),
       .i_ck_rcosc_div4(),
       .i_ck_rcosc_div24(),
       .i_ck_rcosc_div64(),
       .i_ck_lfosc(),
       .i_cnt_end(),
       .i_ck_ring_osc(),
       .i_ck_matrix(),
       .i_clk_source_sel(3'b000),
       
       .i_fun_sel(cell_function),       
       .i_mode_sel(mode),
       .i_compare(14'b11), // Max conter value before reset
       
 
       .o_wake_sleep_status(),
       .o_counter_out(OUT),
       // For debug only      
       .o_ctr_current_val(Q),    
       .rst(edge_detect)

);
    
    initial begin
		clk = 1'b0;
		RESETIN = 1'b0;
		DLYIN = 1'b0;
		#10000 $finish;
	end
	
    always #5 	clk = ~clk;
    //always #40  RESETIN = 1'b1;
    always #100  RESETIN = ~RESETIN;
    always #80  DLYIN = ~DLYIN;
endmodule
