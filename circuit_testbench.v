module circuit813_tb();
  reg x1, x2, x3, x4, x5;
  wire z;
  
circuit813 uut( .x1(x1), .x2(x2), .x3(x3), .x4(x4), .x5(x5), .z(z) );

initial begin
  x1 <= 0; x2 <= 0;x3 <= 0 ;x4 <= 0;x5 <= 1;
  #20
  x1 <= 0; x2 <= 0;x3 <= 1 ;x4 <= 0;x5 <= 0;
  #20
  $finish;
end
endmodule
config cf_circuit813;
 design WORK.circuit813_tb;
 default liblist WORK;
endconfig


