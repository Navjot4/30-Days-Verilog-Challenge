module encoder(octal,bin);
  input [7:0] octal;
  output reg [2:0] bin;
  always @(*)
    case(octal)
      8'b0000_0001:bin=3'b000;
      8'b0000_0010:bin=3'b001;
      8'b0000_0100:bin=3'b010;
      8'b0000_1000:bin=3'b011;
      8'b0001_0000:bin=3'b100;
      8'b0010_0000:bin=3'b101;
      8'b0100_0000:bin=3'b110;
      8'b1000_0000:bin=3'b111;
      default:bin=3'bxxx;
    endcase
endmodule
