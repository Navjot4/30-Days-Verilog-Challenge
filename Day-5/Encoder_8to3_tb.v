`timescale 1ns/1ps
module encoder_tb;
  reg [7:0] in;
  wire [2:0] out;
  encoder dut(in,out);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      $monitor($time, " input=%b,output=%b" ,in,out);
      in=8'b0000_0001; #2;
      in=8'b0000_0010; #2;
      in=8'b0000_0100; #2;
      in=8'b0000_1000; #2;
      in=8'b0001_0000; #2;
      in=8'b0010_0000; #2;
      in=8'b0100_0000; #2;
      in=8'b1000_0000; #2;
      $finish;
    end
endmodule
