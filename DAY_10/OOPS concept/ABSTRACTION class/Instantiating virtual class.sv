virtual class parrent;
  bit[31:0]data;
endclass
module parrt;
    parrent p;
    initial begin
    p=new();
  end
endmodule

//op
# ** Fatal: (vsim-8250) design.sv (651): Class allocator method 'new' called on abstract class 'parrent'.
