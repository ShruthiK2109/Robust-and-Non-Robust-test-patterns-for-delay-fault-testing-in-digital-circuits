module circuit813( x1, x2, x3, x4, x5, z );
  input x1, x2, x3, x4, x5;
  output z;
  wire  c1,c2,c3,c4,x1bar;

  GTECH_NOT  G6(.A(x1),.Z(x1bar));
  GTECH_AND2 G1 ( .A(x1), .B(x2), .Z(c1) );
  GTECH_OR2 G2 ( .A(x3), .B(x4), .Z(c2) );
  GTECH_NOR2 G3 ( .A(c1), .B(c2), .Z(c3) );
  GTECH_AND2 G4 ( .A(x1bar), .B(x5), .Z(c4) );
  GTECH_OR2 G5 ( .A(c3), .B(c4), .Z(z) );
endmodule

