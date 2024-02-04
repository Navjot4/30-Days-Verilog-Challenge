`timescale 1ns/1ps
module decoder_tb;
  reg [1:0] In;
  wire [3:0] Out;
  decoder tb(In,Out);
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      $monitor($time,"Input= %b,Output=%b", In,Out);
      In=2'b00; #2;
      In=2'b10; #2;
      In=2'b11; #2;
      In=2'b01; #2;
      $finish;
    end
endmodule
