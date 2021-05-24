`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:56:19 01/29/2021 
// Design Name: 
// Module Name:    traffic_lights 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module traffic_lights(clk1,clk2,clk3,S_light,W_light,N_light,E_light);
 input clk1,clk2,clk3;
 output reg [1:0] S_light;
 output reg [1:0] W_light;
 output reg [1:0] N_light;
 output reg [1:0] E_light;
 reg [3:0] state;
 // 00=red 01=yellow 10=green
 always@(posedge clk1)
 begin 
   if(state==4'd0)
	  begin S_light=2'b01; state=4'd1; end
	  
	else if(state==4'd2)
	  begin W_light=2'b01; state=4'd3; end
	  
	else if(state==4'd4)
	  begin N_light=2'b01; state=4'd5; end
	  
	else if(state==4'd6)
	  begin E_light=2'b01; state=4'd7; end
 end
 
 
 always@(posedge clk2)
 begin 
   if(state==4'd1)
	  begin S_light=2'b00; W_light=2'b10; state=4'd2; end
	  
	else if(state==4'd3)
	  begin W_light=2'b00; N_light=2'b10; state=4'd4; end
	  
	else if(state==4'd5)
	  begin N_light=2'b00; E_light=2'b10; state=4'd6; end
	  
	else if(state==4'd7)
	  begin E_light=2'b00; S_light=2'b10; state=4'd0; end
 end
 
 always@(posedge clk3)
 begin 
    S_light=2'b10;
    W_light=2'b00;
    N_light=2'b00;
    E_light=2'b00;
	 state=4'd0;
 end
 
 
endmodule
