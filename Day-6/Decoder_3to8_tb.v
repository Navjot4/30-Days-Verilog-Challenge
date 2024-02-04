`timescale 1ns/1ps
module decoder_tb;
  reg [2:0] In;
  wire [7:0] Out;
  decoder tb(In,Out);
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      $monitor($time,"Input= %b,Output=%b", In,Out);
      In=3'b000; #2;
      In=3'b001;#2;
      In=3'b010; #2;
      In=3'b011; #2;
      In=3'b100; #2;
      In=3'b101;#2;
      In=3'b110;#2;
      In=3'b111;#2;
      $finish;
    end
endmodule
