`timescale 1ns / 1ps
module tb;
  reg [3:0] In;
  reg [1:0] Sel;
  wire Out;
  mux_4to1 mux_tb(In,Sel,Out);
  initial
    begin
      $dumpfile("mux_4to1.vcd");
      $dumpvars(1);
      $monitor($time," Input=%b,sel=%b,Output=%b",In,Sel,Out);
      In=4'b0000;Sel=2'b01;
      #2 In=4'b0010;Sel=2'b01;
      #2 In=4'b0100;Sel=2'b10;
      #2 In=4'b1111;Sel=2'b11;
      #2 In=4'b0101;Sel=2'b01;
      #2 $finish;
    end
endmodule
