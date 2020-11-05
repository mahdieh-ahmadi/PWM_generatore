`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:32:16 11/05/2020 
// Design Name: 
// Module Name:    pwm_generator 
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
module pwm_generator(
    input increase_duty,
    input decrease_duty,
    input reset,
    input clk,
	 output reg pwm
    );

reg [3:0] w1 ;
reg [3:0] w2 ;
reg [3:0] w3;
initial begin
 w1 = 0;
 w2 = 0;
 w3 = 5;
end

always @(posedge clk)
begin

	w3 = (increase_duty == 1 && w3 != 10) ? w3+1 : ((decrease_duty == 1 && w3 != 0) ? w3-1 : (reset == 1 ? 5 : w3));
	 w2 = w1+1;
	 pwm =  (w1 < w3) ? 1 : 0;
	 w1 = (w2 == 10) ? 0 : w2;
	
end


endmodule
