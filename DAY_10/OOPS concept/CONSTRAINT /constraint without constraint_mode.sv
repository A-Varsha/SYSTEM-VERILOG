class parent;
  rand bit[3:0]addr;
  constraint addr_range{ addr inside {2,5};}
endclass
module packet;
  initial begin
    parent p;
    p=new();
    repeat(2)begin
    p.randomize();
      $display("addr=%0d",p.addr);
    end
  end
endmodule
//op
# addr=2
# addr=5
