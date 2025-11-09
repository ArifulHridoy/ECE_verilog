`timescale 1ns/10ps
module tb_mux4to1;
reg [3:0] I;
reg [1:0] S;
wire Y;
mux4to1 uut (.I(I), .S(S), .Y(Y));
initial begin
$monitor("Time=%0t | I=%b S=%b -> Y=%b", $time, I, S, Y);
$dumpfile("mux4to1.vcd");
$dumpvars(0, tb_mux4to1);
I=4'b1010;
S=2'b00; #10;
S=2'b01; #10;
S=2'b10; #10;
S=2'b11; #10;
$finish;
end
endmodule
