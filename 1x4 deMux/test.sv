`timescale 1ns/10ps
module tb_demux1to4;
reg D;
reg [1:0] S;
wire [3:0] Y;
demux1to4 uut (.D(D), .S(S), .Y(Y));
initial begin
$monitor("Time=%0t | D=%b S=%b -> Y=%b", $time, D, S, Y);
$dumpfile("demux1to4.vcd");
$dumpvars(0, tb_demux1to4);
D=1; S=2'b00; #10;
S=2'b01; #10;
S=2'b10; #10;
S=2'b11; #10;
D=0; S=2'b10; #10;
$finish;
end
endmodule
