`timescale 1ns/1ps
module tb;
  reg s,r;
  wire q,qbar;
  sr_latch dut(s,r,q,qbar);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      $monitor($time,"s=%b,r=%b,q=%b,qbar=%b" , s,r,q,qbar);
      s=0;r=0; #2;
      s=0;r=1; #2;
      s=1;r=0; #2;
      s=0;r=0; #2;
      $finish;
    end
endmodule
