
`timescale 1ns/1ps
module decoder_tb;
  reg [3:0] In;
  wire [15:0] Out;
  decoder tb(In,Out);
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      $monitor($time,"Input= %b,Output=%b", In,Out);
      In=4'b0000; #2;
      In=4'b0001; #2;
      In=4'b0010; #2;
      In=4'b0011; #2;
      In=4'b0100; #2;
      In=4'b0101; #2;
      In=4'b0110; #2;
      In=4'b0111; #2;
      In=4'b1000; #2;
      In=4'b1001; #2;
      In=4'b1010; #2;
      In=4'b1011; #2;
      In=4'b1100; #2;
      In=4'b1101; #2;
      In=4'b1110; #2;
      In=4'b1111; #2;
      $finish;
    end
endmodule
