module demux(a,sel,y0,y1,y2,y3);
  input a;
  input [1:0] sel;
  output reg y0,y1,y2,y3;
  always @(*)
    case(sel)
      2'b00:{y3,y2,y1,y0}={3'b000,a};
      2'b01:{y3,y2,y1,y0}={2'b00,a,1'b0};
      2'b10:{y3,y2,y1,y0}={1'b0,a,2'b00};
      2'b11:{y3,y2,y1,y0}={a,3'b000};
    endcase
endmodule
