// Code your design here
/*class packet;
  rand  bit [2:0] addr1;
  randc bit [2:0] addr2; 
endclass

module rand_methods;
  initial begin
    packet pkt;
    pkt = new();
    repeat(10) begin
      pkt.rand_mode(0);
      pkt.randomize();
      $display("\taddr1 = %0d \t addr2 = %0d",pkt.addr1,pkt.addr2);
      $display("\taddr1.rand_mode = %0d \t addr2.rand_mode = %0d",pkt.addr1.rand_mode,pkt.addr2.rand_mode);
    end
  end
endmodule*/
class rand_methods;
  rand bit [2:0]addr;
  rand bit [2:0]data;
  
  function void pre_randomize();
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
# value of addr=0 data=5
    
