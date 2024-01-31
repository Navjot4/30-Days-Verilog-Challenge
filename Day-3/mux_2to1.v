module mux21(in,sel,out);
  input [1:0] in;
  input sel;
  output out;
  assign out=in[sel];
  //When sel=0,out=in[0] and sel=1,out=in[1]
endmodule
