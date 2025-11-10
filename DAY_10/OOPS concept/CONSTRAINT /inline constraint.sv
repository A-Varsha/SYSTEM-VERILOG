class packet;
  rand bit[3:0]addr;
endclass
module parent ;
  initial begin
    packet pkt;
    repeat(5)begin
    pkt=new();
      pkt.randomize () with{addr==8;};
    $display("addr=%0d",pkt.addr);
  end
  end
endmodule
//op
# addr=8
# addr=8
# addr=8
# addr=8
# addr=8
