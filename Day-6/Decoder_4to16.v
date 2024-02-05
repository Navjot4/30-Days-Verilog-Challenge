module decoder(in,out);
  input [3:0] in;
  output reg [15:0] out;
  integer i;
  always @(*)
    begin
    out=16'b0000_0000_0000_0000;
    for(i=0;i<16;i=i+1)
      begin
        if(i==in) 
          begin
          out[i]=1'b1;
          end
      end
    end
endmodule
