class packet;
  rand bit[3:0]addr;
  string addr_range;
  constraint address_range{if(addr_range=="small")
                               addr>8;
                           else
                             addr<8;}
endclass
 module pack;
   initial begin
     packet pkt;
     pkt=new();
     pkt.addr_range ="small";
     $display("addr_range=small");
     repeat(5)begin
     pkt.randomize();
     $display("addr=%0d",pkt.addr);
     end
     pkt.addr_range ="high";
     $display("addr_range=high");
     repeat(5)begin
     pkt.randomize();
     $display("addr=%0d",pkt.addr);
     end
   end
endmodule
//op
# addr_range=small
# addr=15
# addr=14
# addr=10
# addr=10
# addr=14
# addr_range=high
# addr=0
# addr=4
# addr=2
# addr=5
# addr=3
