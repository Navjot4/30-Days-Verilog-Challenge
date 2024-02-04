module decoder(in,out);
  input [2:0] in;
  output reg [7:0] out;
  integer i;
  always @(*)
    begin
    out=8'b0000_0000;
  for(i=0;i<8;i=i+1)
    begin
      if(i==in)
        begin
          out[i]=1'b1;
        end
    end
    end
endmodule
