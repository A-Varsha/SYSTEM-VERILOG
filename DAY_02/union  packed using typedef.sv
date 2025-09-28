module union_packed_typedef;
typedef union packed{
logic[9:0]data;
struct packed{
bit p1;
bit [2:0]p2;
bit [1:0]p3;
bit p4;
bit [2:0]pp5;
}p_modes;
}myunion;
myunion union1;

initial begin
  union1.data = 10'b1011_001011;  
  $display("data   = %b", union1.data);
  $display("p1     = %b", union1.p_modes.p1);
  $display("p2     = %b", union1.p_modes.p2);
  $display("p3     = %b", union1.p_modes.p3);
  $display("p4     = %b", union1.p_modes.p4);
  $display("pp5    = %b", union1.p_modes.pp5);

  
  union1.p_modes = '{1, 3'b101, 2'b11, 1, 3'b010};
  $display("data after struct assignment = %b", union1.data);
end
endmodule

output
# data   = 1011001011
# p1     = 1
# p2     = 011
# p3     = 00
# p4     = 1
# pp5    = 011
# data after struct assignment = 1101111010


