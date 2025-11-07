class packet;
  rand bit[3:0]addr;
  constraint addr_range{unique{addr};}
endclass

 module pack;
   initial begin
     packet pkt;
     pkt=new();
     repeat(10)begin
       pkt.randomize();
       $display("addr=%0d",pkt.addr);
     end
   end
 endmodule
//op
# addr=14
# addr=5
# addr=1
# addr=7
# addr=5
# addr=8
# addr=12
# addr=10
# addr=5
# addr=3
