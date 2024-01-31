`timescale 1ns/1ps
module tb;
  reg [3:0] Bin;
  wire [3:0] Gray;
  binary2gray BG(Bin,Gray);
  initial 
    begin
      $dumpfile("Binary_to_gray.vcd");
      $dumpvars(1);
      $monitor($time,"  binary=%b,gray=%b",Bin,Gray);
      Bin=4'b1001;
      #5 $finish;
    end
endmodule
