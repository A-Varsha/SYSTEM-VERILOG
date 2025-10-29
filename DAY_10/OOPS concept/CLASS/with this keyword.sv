class sv_class;
  bit[2:0]addr;
  bit[2:0]data;
  bit write;
  string packet ;
  
  function new(bit [2:0] addr,data,bit write,string packet);
    this.addr=addr;
    this.data=data;
    this.write=write;
    this.packet=packet;
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
      pkt=new(32'h10,32'hff,1,"varsha");
    pkt.display();
    end
  endmodule


//op
# addr=0
# data=7
# write=1
# packet=varsha
