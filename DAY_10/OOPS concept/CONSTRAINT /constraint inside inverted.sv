class packet;
  rand bit[3:0]addr;
  rand bit[3:0]s_addr;
  rand bit[3:0]e_addr;
  constraint addr_1_range {!(addr inside {[s_addr:e_addr]});}
endclass

 module pack;
   initial begin
     packet pkt;
     pkt=new();
     repeat(10)begin
     pkt.randomize();
       $display("s_addr=%0d e_addr=%0d",pkt.s_addr,pkt.e_addr);
       $display("addr=%0d",pkt.addr);
     end
   end
 endmodule

//op
# s_addr=0 e_addr=2
# addr=6
# s_addr=5 e_addr=2
# addr=7
# s_addr=4 e_addr=15
# addr=1
# s_addr=0 e_addr=3
# addr=8
# s_addr=7 e_addr=5
# addr=10
# s_addr=12 e_addr=6
# addr=3
# s_addr=5 e_addr=7
# addr=11
# s_addr=8 e_addr=6
# addr=1
# s_addr=4 e_addr=12
# addr=0
# s_addr=1 e_addr=9
# addr=11
