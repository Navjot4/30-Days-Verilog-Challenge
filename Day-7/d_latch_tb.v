`timescale 1ns/1ps
module tb;
  reg d,en;
  wire q,qbar;
  sr_latch dut(d,en,q,qbar);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      $monitor($time,"d=%b,en=%b,q=%b,qbar=%b" , d,en,q,qbar);
       d=0;en=1; #2;
       d=1;en=1; #2;
       d=0;en=1; #2;
       d=1;en=0; #2;
       d=1;en=1; #2;
      $finish;
    end
endmodule
