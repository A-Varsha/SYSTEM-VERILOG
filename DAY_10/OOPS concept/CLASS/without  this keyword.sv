class sv_class;
  bit[2:0]addr;
  bit[2:0]data;
  bit write;
  string packet ;
  
  function new(bit [2:0] addr,data,bit write,string packet);
    addr=addr;
    data=data;
    write=write;
    packet=packet;
  endfunction
  
  function void display();
    $display("         ");
    $display("addr=%0h",addr);
    $display("data=%0h",data);
    $display("write=%0h",write);
    $display("packet=%0h",packet);
    $display("          ");
  endfunction
endclass
  
  module control;
    sv_class pkt;
    initial begin
      pkt=new(32'h10,32'hff,1,"good_pkt");
    pkt.display();
    end
  endmodule

//op

# addr=0
# data=0
# write=0
# packet=
