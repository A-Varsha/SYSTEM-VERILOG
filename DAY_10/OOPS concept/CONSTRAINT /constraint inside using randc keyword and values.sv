class packet;
  rand bit[5:0]addr;
  constraint addr_range{addr inside {1,5,6,[8:12],23};}
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
# addr=23
# addr=1
# addr=1
# addr=1
# addr=1
# addr=12
# addr=12
# addr=23
# addr=1
# addr=1
