`timescale 1ns/1ps
module demux_tb;
  reg in;
  reg [1:0] sel;
  wire z0,z1,z2,z3;
  demux dut(in,sel,z0,z1,z2,z3);
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1); 
      $monitor($time,"  input=%b,select=%b,output3=%b,output2=%b,output1=%b,output0=%b",in,sel,z3,z2,z1,z0);
      sel=2'b00; in=0; #1;
      sel=2'b00; in=1; #1;
      sel=2'b01; in=0; #1;
      sel=2'b01; in=1; #1;
      sel=2'b10; in=0; #1;
      sel=2'b10; in=1; #1;
      sel=2'b11; in=0; #1;
      sel=2'b11; in=1; #1;
      $finish;
    end
endmodule
