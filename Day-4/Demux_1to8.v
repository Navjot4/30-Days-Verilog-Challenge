module demux(in,sel,y0,y1,y2,y3,y4,y5,y6,y7);
  input in;
  input [2:0] sel;
  output reg y0,y1,y2,y3,y4,y5,y6,y7;
  assign y0=(sel==3'b000)?in:1'b0;
  assign y1=(sel==3'b001)?in:1'b0;
  assign y2=(sel==3'b010)?in:1'b0;
  assign y3=(sel==3'b011)?in:1'b0;
  assign y4=(sel==3'b100)?in:1'b0;
  assign y5=(sel==3'b101)?in:1'b0;
  assign y6=(sel==3'b110)?in:1'b0;
  assign y7=(sel==3'b111)?in:1'b0;
endmodule
