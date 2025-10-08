module funname();
int data ,address;
int newval;
int add;
function int funct1(inout int data ,input int address );
return data+address;
endfunction
initial begin
address=1;
data=9;
add=10;
#1 ;newval= add+funct1(data,address);
$display("newval=%0d",newval);
end
endmodule


output
newval =20
