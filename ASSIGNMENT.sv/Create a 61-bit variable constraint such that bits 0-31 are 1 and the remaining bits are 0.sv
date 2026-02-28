class packet;
  rand bit[60:0]a;
  //   constraint c1{a[31:0]==32'hFFFF_FFFF;
//                 a[60:32]==0;}
//   constraint c1{ foreach (a[i]){ if(i<=31)
//     a[i]==1;
//                else
//                  a[i]==0;}}
    endclass
    module pick;
      packet pkt;
      initial begin
        pkt=new();
        if(pkt.randomize())
          $display("a=%b",pkt.a);
      end
