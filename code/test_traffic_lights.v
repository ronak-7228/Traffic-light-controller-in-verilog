`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:04:45 01/30/2021
// Design Name:   traffic_lights
// Module Name:   D:/Btech Full Courses/Trimester 2/Digital Design/Project/project/test_traffic_lights.v
// Project Name:  project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: traffic_lights
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_traffic_lights;

	// Inputs
	reg clk1;
	reg clk2;
	reg clk3;

	// Outputs
	wire [1:0] S_light;
	wire [1:0] W_light;
	wire [1:0] N_light;
	wire [1:0] E_light;

	// Instantiate the Unit Under Test (UUT)
	traffic_lights uut (
		.clk1(clk1), 
		.clk2(clk2), 
		.clk3(clk3), 
		.S_light(S_light), 
		.W_light(W_light), 
		.N_light(N_light), 
		.E_light(E_light)
	);

	initial 
	 begin 
		 clk1 = 1; clk2 = 1; clk3=0;
		 #1 clk3=~clk3;
		 forever 
			  begin
				#25 clk1 = ~clk1;
				#5 clk2 = ~clk2; 
			  end
	 end
      
endmodule

