`timescale 1ns/1ps
module encoder_tb;
  reg [3:0] in;
  wire [1:0] out;
  encoder dut(in,out);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      $monitor($time, " input=%b,output=%b" ,in,out);
      in=4'b0001; #2;
      in=4'b0010; #2;
      in=4'b0100; #2;
      in=4'b1000; #2;
      $finish;
    end
endmodule
