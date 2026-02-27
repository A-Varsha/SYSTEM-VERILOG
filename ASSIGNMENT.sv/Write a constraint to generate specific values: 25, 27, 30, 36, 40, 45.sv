 class packet ;
   rand bit [7:0]a;
   constraint c1 {a inside{24,25,26,[30:36],[40:45]};}
 endclass
module pick;
  packet pkt;
  initial begin
    pkt=new();
    repeat(10)begin
    pkt.randomize();
      $display("a=%p",pkt.a);
  end
  end
endmodule
