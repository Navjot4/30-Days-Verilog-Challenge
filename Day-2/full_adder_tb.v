`timescale 1ns/1ps
module tb;
  reg A,B,C;wire Sum,Carry;
  full_adder FA(A,B,C,Sum,Carry);
  initial
    begin
      $dumpfile("fulladder.vcd");
      $dumpvars(1);
      $monitor($time,"a=%b,b=%b,c=%b,sum=%b,carry=%b",A,B,C,Sum,Carry);
       A=1'b0;B=1'b0;C=1'b0;
      #5  A=1'b0;B=1'b0;C=1'b1;
      #5  A=1'b0;B=1'b1;C=1'b0;
      #5  A=1'b1;B=1'b1;C=1'b1;
      #5 $finish;
    end
endmodule
