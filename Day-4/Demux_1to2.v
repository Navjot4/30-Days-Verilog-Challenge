module demux(a,sel,y0,y1);
  input a;
  input sel;
  output y0,y1;
  assign {y1,y0}=sel?{a,1'b0}:{1'b0,a}; // If select line is 0,y0=in else y1=in
endmodule
