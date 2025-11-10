 class packet;
      rand bit[3:0]addr;
      constraint addr_range{addr>5;}
    endclass
    module parent;
      initial begin
        packet pkt;
        pkt=new();
        repeat(2)begin
        pkt.randomize() with {addr<5;};
        $display("addr=%0d",pkt.addr);
      end
        
      end
    endmodule
//op
# design.sv(7): randomize() failed due to conflicts between the following constraints:
# 	design.sv(3): addr_range { (addr > 5); }
# 	design.sv(10): $inline { (addr < 5); }
