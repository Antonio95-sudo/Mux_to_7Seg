module Mux(
    input [3:0] A,B,
    input  S,
    output [3:0] OUT
);

    reg [3:0] Z;

    always@(A,B,S)
        begin
        if(S == 1'b1)
            Z <= A;
        else
            Z <= B;
        end

assign OUT = Z;


endmodule