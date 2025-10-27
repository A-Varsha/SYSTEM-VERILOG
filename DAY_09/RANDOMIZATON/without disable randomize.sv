class packet;
  rand  bit [2:0] addr1;
  randc bit [2:0] addr2; 
endclass

module rand_methods;
  initial begin
    packet pkt;
    pkt = new();
    repeat(10) begin
      pkt.randomize();
      $display("\taddr1 = %0d \t addr2 = %0d",pkt.addr1,pkt.addr2);
    end
  end
endmodule

//op
#	  addr1 = 5 	 addr2 = 3
# 	addr1 = 1 	 addr2 = 5
# 	addr1 = 3 	 addr2 = 6
# 	addr1 = 2 	 addr2 = 0
# 	addr1 = 0 	 addr2 = 2
# 	addr1 = 2 	 addr2 = 1
# 	addr1 = 2 	 addr2 = 4
# 	addr1 = 2 	 addr2 = 7
# 	addr1 = 0 	 addr2 = 6
# 	addr1 = 5 	 addr2 = 5
