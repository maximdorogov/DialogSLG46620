`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/27/2020 02:55:24 PM
// Design Name: 
// Module Name: counter_14bits
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


module counter_14bits(
    input i_rst,
    input i_ck_rcosc,
    input i_ck_rcosc_div4,
    input i_ck_rcosc_div24,
    input i_ck_rcosc_div64,
    input i_ck_lfosc,
    input i_cnt_end,
    input i_ck_ring_osc,
    input i_ck_matrix,
    input [2:0]i_clk_source_sel,
    
    input [1:0]i_fun_sel,
    input [1:0]i_mode_sel,
    input [13:0]i_compare, // Max conter value before reset
    
    output  o_wake_sleep_status,  // '1' Normal operation. '0' Power Down 
    output reg o_counter_out,  
    
    // For debug only     
    output [13:0]o_ctr_current_val,   
    output  reg rst                     
    );

  localparam DELAY = 2'b00;
  localparam COUNTER = 2'b01;
  
  localparam POS_EDGE_MODE = 2'b10;
  localparam NEG_EDGE_MODE = 2'b01;
  localparam HIGH_LVLRST_MODE = 2'b11;
    
    wire pos_edge, neg_edge, both_edge;
    reg clk;
    reg sig_dly;                                // Aux signal used for edge detection
    reg [13:0]ctr_current_val;
    reg o_ctr_end, dly_negedge_out;
    reg [13:0]aux_ctr1;
    
    assign o_ctr_current_val = ctr_current_val;
    assign o_wake_sleep_status = 1'b1;
    assign both_edge =  neg_edge |  pos_edge;
    assign pos_edge = i_rst & ~sig_dly;            /* Pos edge detector */    
    assign neg_edge =  sig_dly & ~i_rst; 
 //   assign o_counter_out = o_ctr_end;
/************** Combinational logic ***************************/ 
    
    always @(*) begin
/* Reset Mode selection */       
        case(i_mode_sel)
             2'b00: begin
                    rst = both_edge;    
                    end
             2'b01: begin 
                    rst = neg_edge;  
                    end
             2'b10: begin 
                    rst = pos_edge;  
                    end
             2'b11: begin
                    rst = i_rst;
                    end
         endcase
         
  /* Clock source selection */         
    case(i_clk_source_sel)
             3'b000: begin
                    clk = i_ck_rcosc;    
                    end
             3'b001: begin 
                    clk = i_ck_rcosc_div4;  
                    end
             3'b010: begin 
                    clk = i_ck_rcosc_div24;  
                    end
             3'b011: begin  
                    clk = i_ck_rcosc_div64;
                    end
             3'b100: begin  
                    clk = i_ck_lfosc;
                    end
             3'b101: begin  
                    clk = i_cnt_end;
                    end
             3'b110: begin  
                    clk = i_ck_ring_osc;
                    end
             3'b111: begin  
                    clk = i_ck_matrix;
                    end
         endcase 
                 
   /* Delay/Counter output signal selection */ 
    
        case(i_fun_sel)
             DELAY: begin
                        if( i_mode_sel ==  NEG_EDGE_MODE) begin
                            o_counter_out = dly_negedge_out;
                        end 
                        else begin
                             o_counter_out = o_ctr_end;
                        end    
                    end
             COUNTER: begin 
                    o_counter_out = o_ctr_end;  
                    end
         endcase         
    end
  
 /* Edge detection  */ 
  always @ (posedge clk) begin
    sig_dly <= i_rst;
 end 
 
/* delay neg edge  */ 
always @ (posedge clk) begin
    
    if(rst) begin       
        aux_ctr1 <= 14'b0;
        dly_negedge_out <= 1;
    end
    else begin   
        aux_ctr1 <= aux_ctr1 + 14'b1;
        if(aux_ctr1 >= i_compare) begin
            dly_negedge_out <= i_rst;
        end
        else begin
            dly_negedge_out <= 1;
        end
    end
end 
    
/* Delay Counter */
    always @(posedge clk) begin
        
        if(rst) begin      
               
            ctr_current_val <= 14'b0;  
            if(i_mode_sel == HIGH_LVLRST_MODE || ((i_mode_sel == POS_EDGE_MODE)) && ( i_fun_sel == COUNTER )) 
            begin       
                o_ctr_end <= 1'b1;
            end
            
            else begin
                o_ctr_end <= 1'b0;
            end
        end 
        else begin      
            ctr_current_val <= ctr_current_val + 14'b1;
            
            if(ctr_current_val >= i_compare) begin
            
                if(i_fun_sel == DELAY) begin
                
                    if(i_mode_sel == POS_EDGE_MODE) begin
                        o_ctr_end <= 1'b1 & i_rst;
                    end
                end   
                else begin    
                              
                    o_ctr_end <= 1'b1;
                    ctr_current_val <= 14'b0;
                end                         
            end 
            else begin
                if (i_fun_sel == DELAY) begin
                
                    if(i_mode_sel == POS_EDGE_MODE) begin
                        o_ctr_end <= i_rst & o_ctr_end;
                    end   
                end 
                else begin
                    o_ctr_end <= 1'b0;
                end
            end          
        end
    end

endmodule
