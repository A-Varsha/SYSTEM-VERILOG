class packet;
  rand bit[3:0]addr;
  rand bit[3:0]data;
  
  constraint data_range {data>0;
                         data<5;}
endclass
module parent;
  initial begin
    packet pkt1;
    packet pkt2;
    pkt1=new();
    pkt2=new();
    repeat(10)begin
    pkt1.randomize() with {addr==8;};
    $display("addr=%0d data=%0d",pkt1.addr,pkt1.data);
    pkt2.randomize() with {addr==8;};
    $display("addr=%0d data=%0d",pkt2.addr,pkt2.data);
  end
  end
endmodule
//op
# addr=8 data=1
# addr=8 data=3
# addr=8 data=3
# addr=8 data=1
# addr=8 data=3
# addr=8 data=2
# addr=8 data=3
# addr=8 data=4
# addr=8 data=2
# addr=8 data=3
# addr=8 data=2
# addr=8 data=2
# addr=8 data=1
# addr=8 data=3
# addr=8 data=2
# addr=8 data=1
# addr=8 data=2
# addr=8 data=2
# addr=8 data=1
# addr=8 data=1
