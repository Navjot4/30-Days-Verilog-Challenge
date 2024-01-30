'timescale 1ns/1ps
module half_adder_tb;
reg A_tb;
reg B_tb;
wire Carry_tb;
wire Sum_tb;
  half_adder dut (A_tb,B_tb,Sum_tb,Carry_tb);
initial 
  begin
    $dumpfile("half-adder.vcd");
    $dumpvars(1);
    $monitor("a=%b,b=%b,sum=%b,carry=%b",A_tb,B_tb,Sum_tb,Carry_tb);
   A_tb = 1'b0; B_tb = 1'b0;
   #2    A_tb = 1'b0; B_tb = 1'b1;
   #2 A_tb = 1'b1; B_tb = 1'b0;
   #2 A_tb = 1'b1; B_tb = 1'b1;
   #2 $finish;
end
endmodule
