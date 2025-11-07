class parent;
  randc bit[31:0]addr;
  constraint addr_range{ addr inside {2,5};}
endclass
module packet;
  initial begin
    parent p;
    p=new();
    $display("before enable mode");
    repeat(2)begin
    p.randomize();
      $display("addr=%0d",p.addr);
    end
    
    p.addr_range.constraint_mode(0);
    $display("after enable mode");
    repeat(9)begin
    p.randomize();
      $display("addr=%0d",p.addr);
    end
  end
endmodule
//op
# before enable mode
# addr=2
# addr=5
# after enable mode
# addr=3954980109
# addr=2288556908
# addr=1632051079
# addr=2372548942
# addr=4063888497
# addr=2795036512
# addr=3297691211
# addr=2539084322
# addr=232932245
