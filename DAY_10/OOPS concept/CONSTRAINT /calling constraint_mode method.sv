class parent;
  rand bit[3:0]addr;
  constraint addr_range{ addr inside {2,5};}
endclass
module packet;
  initial begin
    parent p;
    p=new();
    $display("before enable mode");
    $display("value of constraint_mode=%0d",p.addr_range.constraint_mode());
    repeat(2)begin
    p.randomize();
      $display("addr=%0d",p.addr);
    end
    
    p.addr_range.constraint_mode(0);
    $display("after enable mode");
    $display("value of constraint_mode=%0d",p.addr_range.constraint_mode());
    repeat(5)begin
    p.randomize();
      $display("addr=%0d",p.addr);
    end
  end
endmodule
//op
# before enable mode
# value of constraint_mode=1
# addr=2
# addr=5
# after enable mode
# value of constraint_mode=0
# addr=1
# addr=7
# addr=5
# addr=8
# addr=12
