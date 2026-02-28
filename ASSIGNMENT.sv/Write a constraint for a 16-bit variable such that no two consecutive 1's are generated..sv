class packet;
  rand bit [15:0]a;
  constraint c {foreach (a[i]) {if(i>0)
    !(a[i]&&a[i-1]);}}
        endclass
    module pick;
      packet pkt;
      initial begin
        pkt=new();
        if(pkt.randomize())
          $display("a=%b",pkt.a);
      end
endmodule
