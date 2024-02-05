module sr_latch(s,r,q,qbar);
  input s,r;
  output reg q,qbar;
  always @(*)
    begin
    case({s,r})
      2'b01:q <=1'b0; 
      2'b10:q <=2'b1;
      default:q<=q;
    endcase
   qbar<=~q;
    end
endmodule
