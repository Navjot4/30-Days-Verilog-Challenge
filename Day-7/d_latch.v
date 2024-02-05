module sr_latch(d,en,q,qbar);
  input d,en;
  output reg q,qbar;
  always @(*)
    begin
    if(en)
      q<=d;
      qbar <= ~q;
    end
endmodule
