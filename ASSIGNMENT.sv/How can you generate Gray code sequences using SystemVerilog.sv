class packet;
  rand bit a[2:0];
  
  constraint c1 {foreach(a[i]){if(i>0)
    a[i]^a[i-1]==1;}}
endclass
module tb;
  packet pkt;
  initial begin
  pkt=new;
  repeat(4) begin
  pkt.randomize();
  $display("a=%p",pkt.a);
  end
  end
endmodule
