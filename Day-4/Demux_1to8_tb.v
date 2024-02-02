`timescale 1ns/1ps
module demux_tb;
  reg in;
  reg [2:0] sel;
  wire z0,z1,z2,z3,z4,z5,z6,z7;
  demux dut(in,sel,z0,z1,z2,z3,z4,z5,z6,z7);
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1); 
      $monitor($time,"  input=%b,select=%b,output7=%b,output6=%b,output5=%b,output4=%b,output3=%b,output2=%b,output1=%b,output0=%b",in,sel,z7,z6,z5,z4,z3,z2,z1,z0);
      sel=3'b000; in=0; #1;
      sel=3'b001; in=1; #1;
      sel=3'b010; in=0; #1;
      sel=3'b011; in=1; #1;
      sel=3'b100; in=0; #1;
      sel=3'b101; in=1; #1;
      sel=3'b110; in=0; #1;
      sel=3'b111; in=1; #1;
      $finish;
    end
endmodule
