`timescale 1ns/1ps
module tb;
  reg [3:0] Bin;
  wire [3:0] Gray;
  integer i;
  binary2gray BG(Bin,Gray);
  initial 
    begin
      $dumpfile("Binary_to_gray.vcd");
      $dumpvars(1);
      Bin=4'b0000;
      for(i=0;i<16;i=i+1)
        begin
          $monitor($time,"  binary=%b,gray=%b",Bin,Gray);
          #5 Bin=Bin+1;
        end 
    end
endmodule
