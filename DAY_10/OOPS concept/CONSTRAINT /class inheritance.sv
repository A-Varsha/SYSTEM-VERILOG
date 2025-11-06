class parent ;
  rand bit[3:0]data;
  constraint data_range{data<5;}
endclass
class child extends parent;
  rand bit[3:0]addr;
  constraint addr_range{addr>5;}
endclass
module packet;
  parent prt;
  child cld;
  initial begin
    prt=new();
    cld=new();
    $display("============");
    repeat(6)begin
      prt.randomize();
      $display("data=%0d",prt.data);
    end
    $display("============");
    repeat(4)begin
      cld.randomize();
      $display("addr=%0d",cld.addr);
    end
  end
endmodule
//op
# data=4
# data=2
# data=2
# data=0
# data=1
# data=1
# ============
# addr=15
# addr=7
# addr=12
# addr=13
