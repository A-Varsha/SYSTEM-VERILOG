class rand_methods;
  rand bit [2:0]addr;
  rand bit [2:0]data;
  
  function void pre_randomize();
   rand_mode(0);
    $display("inside pre_randomize");
  endfunction
  
  function void post_randomize();
    $display("inside post_randomize");
    $display("value of addr=%0d data=%0d",addr,data);
  endfunction
endclass
module rand_m();
  initial begin
    rand_methods pkt;
    pkt=new();
    pkt.randomize();
  end
  endmodule
//op

# inside pre_randomize
# inside post_randomize
# value of rand_mode.addr=0 data=0
