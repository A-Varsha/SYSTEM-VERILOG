class packet;
  rand bit a[31:0];
  constraint c1 {a.sum() with (int'(item)) == 12;}
  constraint c2 {foreach (a[i]){
    if(i>0)
      !(a[i]&&a[i-1]);}}
endclass
module pick;
  packet pkt;
  initial begin
    pkt=new();
    if(pkt.randomize())
    $display("a=%p",pkt.a);
    else
      $display("randomization failed");
  end
endmodule
