`timescale 1ns/1ps;
module demux_tb;
  reg in,sel;
  wire z0,z1;
  demux dut(in,sel,z0,z1);
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1); 
      $monitor($time,"  input=%b,select=%b,output1=%b,output0=%b",in,sel,z1,z0);
      sel=0; in=0; #1;
      sel=0; in=1; #1;
      sel=1; in=0; #1;
      sel=1; in=1; #1;
      #5 $finish;
    end
endmodule
