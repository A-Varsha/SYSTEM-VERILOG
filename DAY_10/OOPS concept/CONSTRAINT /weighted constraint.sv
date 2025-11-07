class packet;
  rand bit[3:0]addr;
  constraint addr_range{ addr dist{2:=5,[3:5]:/8};}
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
# addr=3
# addr=5
# addr=2
# addr=4
# addr=2
# addr=2
# addr=5
# addr=4
# addr=5
# addr=2
