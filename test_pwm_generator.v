`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:15:54 11/05/2020
// Design Name:   pwm_generator
// Module Name:   E:/university/3991/fpga/homeworks/PWM_generatore/test_pwm_generator.v
// Project Name:  pwm_generator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pwm_generator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_pwm_generator;

	// Inputs
	reg increase_duty;
	reg decrease_duty;
	reg reset;
	reg clk;

	// Outputs
	wire pwm;

	// Instantiate the Unit Under Test (UUT)
	pwm_generator uut (
		.increase_duty(increase_duty), 
		.decrease_duty(decrease_duty), 
		.reset(reset), 
		.clk(clk), 
		.pwm(pwm)
	);

	initial begin
		// Initialize Inputs
		increase_duty = 0;
		decrease_duty = 0;
		reset = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		@(negedge clk) increase_duty = 1;
		@(negedge clk) increase_duty = 0;
		#80000
		
		@(negedge clk) increase_duty = 1;
		@(negedge clk) increase_duty = 0;
		#80000
		
		@(negedge clk) reset = 1;
		@(negedge clk) reset = 0;
		#80000
		
		@(negedge clk) decrease_duty = 1;
		@(negedge clk) decrease_duty = 0;
		#80000
		
		@(negedge clk) decrease_duty = 1;
		@(negedge clk) decrease_duty = 0;
		#80000
		
		
		@(negedge clk) decrease_duty = 1;
		@(negedge clk) decrease_duty = 0;
		#80000
		
		
		@(negedge clk) decrease_duty = 1;
		@(negedge clk) decrease_duty = 0;
		#80000
		
		
		@(negedge clk) decrease_duty = 1;
		@(negedge clk) decrease_duty = 0;
		#80000
		
		
		@(negedge clk) decrease_duty = 1;
		@(negedge clk) decrease_duty = 0;
		#50000
		
		
		@(negedge clk) reset = 1;
		@(negedge clk) reset = 0;
	


	end
	
	always #5000 clk <= ~clk;
      
endmodule

