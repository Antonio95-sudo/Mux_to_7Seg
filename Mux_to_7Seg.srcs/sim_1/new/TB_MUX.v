`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2022 18:18:41
// Design Name: 
// Module Name: TB_MUX
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

//TestBench verificacion modulo Mux.v
/*module TB_MUX();
    

    reg [3:0] A,B;
    reg  S;
    wire [3:0] OUT;
    
    Mux DUT(A,B,S,OUT);
    
    initial 
        begin
        $dumpfile("Mux.vcd");
        $dumpvars(1,TB_MUX);
        
        S = 1'b0; A = 4'b0000; B = 4'b1111;
        #2
        S = 1'b1; A = 4'b0000; B = 4'b1111;
        #2
        S = 1'b0; A = 4'b0100; B = 4'b1001;
        #2
        S = 1'b1; A = 4'b001; B = 4'b1000;
        #2
        
        $finish;
        end
    
endmodule*/

//TestBench verificacion Modulo seve_seg.v
/*module TB_MUX();

    reg [3:0] Z;
    wire [7:0] an;
    wire [6:0] seg;

    seven_seg DUT(Z,an,seg);
    
    initial 
        begin
        $dumpfile("seven_seg.vcd");
        $dumpvars(1,TB_MUX);
        
        Z = 4'b0001;
        #2
        Z = 4'b0010;
        #2
        Z = 4'b0100;
        #2
        Z = 4'b1000;
        #2
        
        $finish;
       
        end
endmodule
*/
//TestBench verificacion module TOP
module TB_MUX();

    reg [3:0] SW,SW1;
    reg btn;
    wire [7:0] an;
    wire [6:0] seg;
    
    Top DUT(SW,SW1,btn,an,seg);
    
    initial
        begin
        $dumpfile("Top.vcd");
        $dumpvars(1,TB_MUX);
        
        SW=4'b0000; SW1=4'b0010; btn=1'b0;
        #2
        SW=4'b0100; SW1=4'b0101; btn=1'b1;
        #2
        SW=4'b1000; SW1=4'b1001; btn=1'b0;
        #2
        SW=4'b1010; SW1=4'b1011; btn=1'b1;
        #2
        SW=4'b0110; SW1=4'b0011; btn=1'b0;
        #2
        
        $finish;
        
        end

endmodule
