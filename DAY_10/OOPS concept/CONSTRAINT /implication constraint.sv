class packet;
  rand bit[3:0]addr;
  string addr_range;
  constraint address_range{(addr_range=="small")->{addr>8};}
endclass

 module pack;
   initial begin
     packet pkt;
     pkt=new();
     pkt.addr_range ="small";
     repeat(5)begin
     pkt.randomize();
       $display("addr=%0d",pkt.addr);
     end
   end
 endmodule

//op
# addr=15
# addr=14
# addr=10
# addr=10
# addr=14
