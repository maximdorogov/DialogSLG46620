`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2020 02:21:58 PM
// Design Name: 
// Module Name: top_level
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


module ctr_delay_macrocell(

       input i_rst_ctr0, 
       input i_ck_rcosc_ctr0,
       input i_ck_rcosc_div4_ctr0,
       input i_ck_rcosc_div24_ctr0,
       input i_ck_rcosc_div64_ctr0,
       input i_ck_lfosc_ctr0,
       input i_ck_ring_osc_ctr0,
       input i_ck_matrix_ctr0,
       input [2:0]i_clk_source_sel_ctr0,
       
       input i_rst_ctr1, 
       input i_ck_rcosc_ctr1,
       input i_ck_rcosc_div4_ctr1,
       input i_ck_rcosc_div24_ctr1,
       input i_ck_rcosc_div64_ctr1,
       input i_ck_lfosc_ctr1,
       input i_ck_ring_osc_ctr1,
       input i_ck_matrix_ctr1,
       input [2:0]i_clk_source_sel_ctr1,
       
       input i_rst_ctr2, 
       input i_ck_rcosc_ctr2,
       input i_ck_rcosc_div4_ctr2,
       input i_ck_rcosc_div24_ctr2,
       input i_ck_rcosc_div64_ctr2,
       input i_ck_lfosc_ctr2,
       input i_ck_ring_osc_ctr2,
       input i_ck_matrix_ctr2,
       input [2:0]i_clk_source_sel_ctr2,
       
       input i_rst_ctr3, 
       input i_ck_rcosc_ctr3,
       input i_ck_rcosc_div4_ctr3,
       input i_ck_rcosc_div24_ctr3,
       input i_ck_rcosc_div64_ctr3,
       input i_ck_lfosc_ctr3,
       input i_ck_ring_osc_ctr3,
       input i_ck_matrix_ctr3,
       input [2:0]i_clk_source_sel_ctr3,
       
       input i_rst_ctr4, 
       input i_ck_rcosc_ctr4,
       input i_ck_rcosc_div4_ctr4,
       input i_ck_rcosc_div24_ctr4,
       input i_ck_rcosc_div64_ctr4,
       input i_ck_lfosc_ctr4,
       input i_ck_ring_osc_ctr4,
       input i_ck_matrix_ctr4,
       input [2:0]i_clk_source_sel_ctr4,
       
       input i_rst_ctr5, 
       input i_ck_rcosc_ctr5,
       input i_ck_rcosc_div4_ctr5,
       input i_ck_rcosc_div24_ctr5,
       input i_ck_rcosc_div64_ctr5,
       input i_ck_lfosc_ctr5,
       input i_ck_ring_osc_ctr5,
       input i_ck_matrix_ctr5,
       input [2:0]i_clk_source_sel_ctr5,
       
       input i_rst_ctr6, 
       input i_ck_rcosc_ctr6,
       input i_ck_rcosc_div4_ctr6,
       input i_ck_rcosc_div24_ctr6,
       input i_ck_rcosc_div64_ctr6,
       input i_ck_lfosc_ctr6,
       input i_ck_ring_osc_ctr6,
       input i_ck_matrix_ctr6,
       input [2:0]i_clk_source_sel_ctr6,
       
       input i_rst_ctr7, 
       input i_ck_rcosc_ctr7,
       input i_ck_rcosc_div4_ctr7,
       input i_ck_rcosc_div24_ctr7,
       input i_ck_rcosc_div64_ctr7,
       input i_ck_lfosc_ctr7,
       input i_ck_ring_osc_ctr7,
       input i_ck_matrix_ctr7,
       input [2:0]i_clk_source_sel_ctr7,
       
       input i_rst_ctr8, 
       input i_ck_rcosc_ctr8,
       input i_ck_rcosc_div4_ctr8,
       input i_ck_rcosc_div24_ctr8,
       input i_ck_rcosc_div64_ctr8,
       input i_ck_lfosc_ctr8,
       input i_ck_ring_osc_ctr8,
       input i_ck_matrix_ctr8,
       input [2:0]i_clk_source_sel_ctr8,
       
       input i_rst_ctr9, 
       input i_ck_rcosc_ctr9,
       input i_ck_rcosc_div4_ctr9,
       input i_ck_rcosc_div24_ctr9,
       input i_ck_rcosc_div64_ctr9,
       input i_ck_lfosc_ctr9,
       input i_ck_ring_osc_ctr9,
       input i_ck_matrix_ctr9,
       input [2:0]i_clk_source_sel_ctr9,
       
       input [1:0]i_fun_sel_ctr0,       
       input [1:0]i_mode_sel_ctr0,
       input [13:0]i_compare_ctr0,
       
       input [1:0]i_fun_sel_ctr1,       
       input [1:0]i_mode_sel_ctr1,
       input [13:0]i_compare_ctr1,
       
       input [1:0]i_fun_sel_ctr2,       
       input [1:0]i_mode_sel_ctr2,
       input [13:0]i_compare_ctr2,
       
       input [1:0]i_fun_sel_ctr3,       
       input [1:0]i_mode_sel_ctr3,
       input [13:0]i_compare_ctr3,
       
       input [1:0]i_fun_sel_ctr4,       
       input [1:0]i_mode_sel_ctr4,
       input [7:0]i_compare_ctr4,
       
       input [1:0]i_fun_sel_ctr5,       
       input [1:0]i_mode_sel_ctr5,
       input [7:0]i_compare_ctr5,
       
       input i_fun_sel_ctr6,       
       input i_mode_sel_ctr6,
       input [7:0]i_compare_ctr6,
       
       input [1:0]i_fun_sel_ctr7,       
       input [1:0]i_mode_sel_ctr7,
       input [7:0]i_compare_ctr7,
       
       input [1:0]i_fun_sel_ctr8,       
       input [1:0]i_mode_sel_ctr8,
       input [7:0]i_compare_ctr8,
       
       input [1:0]i_fun_sel_ctr9,       
       input [1:0]i_mode_sel_ctr9,
       input [7:0]i_compare_ctr9,
       
       output o_ctr_end_ctr0,
       output o_ctr_end_ctr1,
       output o_ctr_end_ctr2,
       output o_ctr_end_ctr3,
       output o_ctr_end_ctr4,
       output o_ctr_end_ctr5,
       output o_ctr_end_ctr6,
       output o_ctr_end_ctr7,
       output o_ctr_end_ctr8,
       output o_ctr_end_ctr9,
        
       // For debug only  
       output [13:0]o_current_val_ctr0,
       output [13:0]o_current_val_ctr1,
       output [13:0]o_current_val_ctr2,
       output [13:0]o_current_val_ctr3,
       output [7:0]o_current_val_ctr4,
       output [7:0]o_current_val_ctr5,
       output [7:0]o_current_val_ctr6,
       output [7:0]o_current_val_ctr7,
       output [7:0]o_current_val_ctr8,
       output [7:0]o_current_val_ctr9,
       
       output o_edge_detect_0,
       output o_edge_detect_1,
       output o_edge_detect_2,
       output o_edge_detect_3,
       output o_edge_detect_4,
       output o_edge_detect_5,
       output o_edge_detect_6,
       output o_edge_detect_7,
       output o_edge_detect_8,
       output o_edge_detect_9
    );
      
  counter_14bits CTR_DLY_0(
       
       .i_rst(i_rst_ctr0), 
       
       .i_ck_rcosc(i_ck_rcosc_ctr0),
       .i_ck_rcosc_div4(i_ck_rcosc_div4_ctr0),
       .i_ck_rcosc_div24(i_ck_rcosc_div24_ctr0),
       .i_ck_rcosc_div64(i_ck_rcosc_div64_ctr0),
       .i_ck_lfosc(i_ck_lfosc_ctr0),
       .i_cnt_end(o_ctr_end_ctr9),
       .i_ck_ring_osc(i_ck_ring_osc_ctr0),
       .i_ck_matrix(i_ck_matrix_ctr0),
       .i_clk_source_sel(i_clk_source_sel_ctr0),
       
       .i_fun_sel(i_fun_sel_ctr0),       
       .i_mode_sel(i_mode_sel_ctr0),
       .i_compare(i_compare_ctr0), 
       
 
       .o_wake_sleep_status(),
       .o_counter_out(o_ctr_end_ctr0),
       
       // For debug only      
       .o_ctr_current_val(o_current_val_ctr0),    
       .rst(o_edge_detect_0)

);

  counter_14bits CTR_DLY_1(
       
       .i_rst(i_rst_ctr1), 
       
       .i_ck_rcosc(i_ck_rcosc_ctr1),
       .i_ck_rcosc_div4(i_ck_rcosc_div4_ctr1),
       .i_ck_rcosc_div24(i_ck_rcosc_div24_ctr1),
       .i_ck_rcosc_div64(i_ck_rcosc_div64_ctr1),
       .i_ck_lfosc(i_ck_lfosc_ctr1),
       .i_cnt_end(o_ctr_end_ctr0),
       .i_ck_ring_osc(i_ck_ring_osc_ctr1),
       .i_ck_matrix(i_ck_matrix_ctr1),
       .i_clk_source_sel(i_clk_source_sel_ctr1),
       
       .i_fun_sel(i_fun_sel_ctr1),       
       .i_mode_sel(i_mode_sel_ctr1),
       .i_compare(i_compare_ctr1), 
       
 
       .o_wake_sleep_status(),
       .o_counter_out(o_ctr_end_ctr1),
       // For debug only      
       .o_ctr_current_val(o_current_val_ctr1),    
       .rst(o_edge_detect_1)

);

  counter_14bits CTR_DLY_2(
       
       .i_rst(i_rst_ctr2), 
       
       .i_ck_rcosc(i_ck_rcosc_ctr2),
       .i_ck_rcosc_div4(i_ck_rcosc_div4_ctr2),
       .i_ck_rcosc_div24(i_ck_rcosc_div24_ctr2),
       .i_ck_rcosc_div64(i_ck_rcosc_div64_ctr2),
       .i_ck_lfosc(i_ck_lfosc_ctr2),
       .i_cnt_end(o_ctr_end_ctr1),
       .i_ck_ring_osc(i_ck_ring_osc_ctr2),
       .i_ck_matrix(i_ck_matrix_ctr2),
       .i_clk_source_sel(i_clk_source_sel_ctr2),
       
       .i_fun_sel(i_fun_sel_ctr2),       
       .i_mode_sel(i_mode_sel_ctr2),
       .i_compare(i_compare_ctr2), 
 
       .o_wake_sleep_status(),
       .o_counter_out(o_ctr_end_ctr2),
       
       // For debug only      
       .o_ctr_current_val(o_current_val_ctr2),    
       .rst(o_edge_detect_2)

);  

  counter_14bits CTR_DLY_3(
       
       .i_rst(i_rst_ctr3), 
       
       .i_ck_rcosc(i_ck_rcosc_ctr3),
       .i_ck_rcosc_div4(i_ck_rcosc_div4_ctr3),
       .i_ck_rcosc_div24(i_ck_rcosc_div24_ctr3),
       .i_ck_rcosc_div64(i_ck_rcosc_div64_ctr3),
       .i_ck_lfosc(i_ck_lfosc_ctr3),
       .i_cnt_end(o_ctr_end_ctr2),
       .i_ck_ring_osc(i_ck_ring_osc_ctr3),
       .i_ck_matrix(i_ck_matrix_ctr3),
       .i_clk_source_sel(i_clk_source_sel_ctr3),
       
       .i_fun_sel(i_fun_sel_ctr3),       
       .i_mode_sel(i_mode_sel_ctr3),
       .i_compare(i_compare_ctr3), 
       
 
       .o_wake_sleep_status(),
       .o_counter_out(o_ctr_end_ctr3),
       
       // For debug only      
       .o_ctr_current_val(o_current_val_ctr3),    
       .rst(o_edge_detect_3)

);

  counter_8bits CTR_DLY_4(
       
       .i_rst(i_rst_ctr4), 
       
       .i_ck_rcosc(i_ck_rcosc_ctr4),
       .i_ck_rcosc_div4(i_ck_rcosc_div4_ctr4),
       .i_ck_rcosc_div24(i_ck_rcosc_div24_ctr4),
       .i_ck_rcosc_div64(i_ck_rcosc_div64_ctr4),
       .i_ck_lfosc(i_ck_lfosc_ctr4),
       .i_cnt_end(o_ctr_end_ctr3),
       .i_ck_ring_osc(i_ck_ring_osc_ctr4),
       .i_ck_matrix(i_ck_matrix_ctr4),
       .i_clk_source_sel(i_clk_source_sel_ctr4),
       
       .i_fun_sel(i_fun_sel_ctr4),       
       .i_mode_sel(i_mode_sel_ctr4),
       .i_compare(i_compare_ctr4), 
       
 
       .o_wake_sleep_status(),
       .o_counter_out(o_ctr_end_ctr4),
       
       // For debug only      
       .o_ctr_current_val(o_current_val_ctr4),    
       .rst(o_edge_detect_4)

);

  counter_8bits CTR_DLY_5(
       
       .i_rst(i_rst_ctr5), 
       
       .i_ck_rcosc(i_ck_rcosc_ctr5),
       .i_ck_rcosc_div4(i_ck_rcosc_div4_ctr5),
       .i_ck_rcosc_div24(i_ck_rcosc_div24_ctr5),
       .i_ck_rcosc_div64(i_ck_rcosc_div64_ctr5),
       .i_ck_lfosc(i_ck_lfosc_ctr5),
       .i_cnt_end(o_ctr_end_ctr4),
       .i_ck_ring_osc(i_ck_ring_osc_ctr5),
       .i_ck_matrix(i_ck_matrix_ctr5),
       .i_clk_source_sel(i_clk_source_sel_ctr5),
       
       .i_fun_sel(i_fun_sel_ctr5),       
       .i_mode_sel(i_mode_sel_ctr5),
       .i_compare(i_compare_ctr5), 
       
 
       .o_wake_sleep_status(),
       .o_counter_out(o_ctr_end_ctr5),
       
       // For debug only      
       .o_ctr_current_val(o_current_val_ctr5),    
       .rst(o_edge_detect_5)

);

  counter_8bits CTR_DLY_6(
       
       .i_rst(i_rst_ctr6), 
       
       .i_ck_rcosc(i_ck_rcosc_ctr6),
       .i_ck_rcosc_div4(i_ck_rcosc_div4_ctr6),
       .i_ck_rcosc_div24(i_ck_rcosc_div24_ctr6),
       .i_ck_rcosc_div64(i_ck_rcosc_div64_ctr6),
       .i_ck_lfosc(i_ck_lfosc_ctr6),
       .i_cnt_end(o_ctr_end_ctr5),
       .i_ck_ring_osc(i_ck_ring_osc_ctr6),
       .i_ck_matrix(i_ck_matrix_ctr6),
       .i_clk_source_sel(i_clk_source_sel_ctr6),
       
       .i_fun_sel(i_fun_sel_ctr6),       
       .i_mode_sel(i_mode_sel_ctr6),
       .i_compare(i_compare_ctr6), 
       
 
       .o_wake_sleep_status(),
       .o_counter_out(o_ctr_end_ctr6),
       // For debug only      
       .o_ctr_current_val(o_current_val_ctr6),    
       .rst(o_edge_detect_6)

);

  counter_8bits CTR_DLY_7(
       
       .i_rst(i_rst_ctr7), 
       
       .i_ck_rcosc(i_ck_rcosc_ctr7),
       .i_ck_rcosc_div4(i_ck_rcosc_div4_ctr7),
       .i_ck_rcosc_div24(i_ck_rcosc_div24_ctr7),
       .i_ck_rcosc_div64(i_ck_rcosc_div64_ctr7),
       .i_ck_lfosc(i_ck_lfosc_ctr7),
       .i_cnt_end(o_ctr_end_ctr6),
       .i_ck_ring_osc(i_ck_ring_osc_ctr7),
       .i_ck_matrix(i_ck_matrix_ctr7),
       .i_clk_source_sel(i_clk_source_sel_ctr7),
       
       .i_fun_sel(i_fun_sel_ctr7),       
       .i_mode_sel(i_mode_sel_ctr7),
       .i_compare(i_compare_ctr7), 
       
 
       .o_wake_sleep_status(),
       .o_counter_out(o_ctr_end_ctr7),
       // For debug only      
       .o_ctr_current_val(o_current_val_ctr7),    
       .rst(o_edge_detect_7)

);

  counter_8bits CTR_DLY_8(
       
       .i_rst(i_rst_ctr8), 
       
       .i_ck_rcosc(i_ck_rcosc_ctr8),
       .i_ck_rcosc_div4(i_ck_rcosc_div4_ctr8),
       .i_ck_rcosc_div24(i_ck_rcosc_div24_ctr8),
       .i_ck_rcosc_div64(i_ck_rcosc_div64_ctr8),
       .i_ck_lfosc(i_ck_lfosc_ctr8),
       .i_cnt_end(o_ctr_end_ctr7),
       .i_ck_ring_osc(i_ck_ring_osc_ctr8),
       .i_ck_matrix(i_ck_matrix_ctr8),
       .i_clk_source_sel(i_clk_source_sel_ctr8),
       
       .i_fun_sel(i_fun_sel_ctr8),       
       .i_mode_sel(i_mode_sel_ctr8),
       .i_compare(i_compare_ctr8), 
       
 
       .o_wake_sleep_status(),
       .o_counter_out(o_ctr_end_ctr8),
       // For debug only      
       .o_ctr_current_val(o_current_val_ctr8),    
       .rst(o_edge_detect_8)

);

  counter_8bits CTR_DLY_9(
       
       .i_rst(i_rst_ctr9), 
       
       .i_ck_rcosc(i_ck_rcosc_ctr9),
       .i_ck_rcosc_div4(i_ck_rcosc_div4_ctr9),
       .i_ck_rcosc_div24(i_ck_rcosc_div24_ctr9),
       .i_ck_rcosc_div64(i_ck_rcosc_div64_ctr9),
       .i_ck_lfosc(i_ck_lfosc_ctr9),
       .i_cnt_end(o_ctr_end_ctr8),
       .i_ck_ring_osc(i_ck_ring_osc_ctr9),
       .i_ck_matrix(i_ck_matrix_ctr9),
       .i_clk_source_sel(i_clk_source_sel_ctr9),
       
       .i_fun_sel(i_fun_sel_ctr9),       
       .i_mode_sel(i_mode_sel_ctr9),
       .i_compare(i_compare_ctr9), 
       
 
       .o_wake_sleep_status(),
       .o_counter_out(o_ctr_end_ctr9),
       
       // For debug only      
       .o_ctr_current_val(o_current_val_ctr9),    
       .rst(o_edge_detect_9)

);
endmodule
