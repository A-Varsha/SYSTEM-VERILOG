class parent;
  rand bit [7:0]addr;
  rand bit [7:0]data;
  constraint addr_rang {addr inside {[5:10]};}
  static constraint addr_range {addr inside {[5:10]};}
endclass
module packet ;
  initial begin
    parent pkt1;
    parent pkt2;
    pkt1=new();
    pkt2=new();
    $display("before constraint mode");
    pkt1.randomize();
    $display("addr=%0d",pkt1.addr);
    pkt2.randomize();
    $display("addr=%0d",pkt2.addr);
    
    pkt2.addr_range.constraint_mode(0);
    $display("after constraint mode");
    pkt1.randomize();
    $display("addr=%0d",pkt1.addr);
    pkt2.randomize();
    $display("addr=%0d",pkt2.addr);
  end
endmodule

//op
# before constraint mode
# addr=6
# addr=8
# after constraint mode
# addr=10
# addr=8
