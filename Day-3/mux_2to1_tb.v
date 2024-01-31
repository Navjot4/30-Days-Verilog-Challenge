`timescale 1ns / 1ps
module tb;
  reg [1:0] In;
  reg Sel;
  wire Out;
  mux21 mux21_tb(In,Sel,Out);
  initial
    begin
      $dumpfile("mux21.vcd");
      $dumpvars(1);
      $monitor($time,"Input=%b,Output=%b",In,Out);
      In=2'b00;Sel=0;
      #2 In=2'b01;Sel=0;
      #2 In=2'b10;Sel=0;
      #2 In=2'b11;Sel=0;
      #2 In=2'b00;Sel=1;
      #2 In=2'b01;Sel=1;
      #2 In=2'b10;Sel=1;
      #2 In=2'b11;Sel=1;
      #2 $finish;
    end
endmodule
