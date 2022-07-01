`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2022 11:04:18
// Design Name: 
// Module Name: Top
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


module Top(
    input [3:0] SW,SW1,
    input btn,
    output [7:0] an,
    output [6:0] seg
    );
    
    wire [3:0] data;
    
    Mux U1(SW,SW1,btn,data);
    /* Mux(
    input [3:0] A,B,
    input  S,
    output [3:0] OUT
);
    */
    seven_seg U2(data,an,seg);
/*     seven_seg(
    input [3:0] Z,
    output [7:0] an,
    output reg [6:0] seg
);*/
    
endmodule
