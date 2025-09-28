module union_tagged;
logic [15:0]x;
typedef union tagged{
int a;
byte b;
bit[15:0]c;
}data;
data d1;
initial begin
d1=tagged a 32'hffff_ffff;
x=d1.b;
$display("x=%h",x);
end
endmodule

output
# ** Error (suppressible): (vsim-8011) Union is tagged 'a', but is referenced as 'b'.
#    Time: 0 ns  Iteration: 0  Process: /union_tagged/#INITIAL#9 File: C:/Users/VARSHA/questa/work/union_tagged.sv Line: 11
# x=ffff
