class packet;
  randc bit[5:0]addr;
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
# addr=6
# addr=1
# addr=9
# addr=5
# addr=12
# addr=11
# addr=10
# addr=8
# addr=23
# addr=1
# exit
