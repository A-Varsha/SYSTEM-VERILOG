class packet;
   rand bit[3:0]data;
  constraint data_range;
endclass
constraint packet::data_range{data>3;}
module pact;
  packet pkt;
  initial begin
    pkt =new();
    repeat(10)begin
    pkt.randomize();
      $display("data=%0d",pkt.data);
  end
  end
endmodule
//op
# data=8
# data=6
# data=14
# data=10
# data=9
# data=13
# data=4
# data=15
# data=4
# data=4
