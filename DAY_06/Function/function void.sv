module voidfunct();
function void funct1();
$display("$time=%0t",$time);
endfunction
initial begin
for(int i=0;i<4;i=i+1)begin
#1;
funct1();
end
end
endmodule

output
# $time=1
# $time=2
# $time=3
# $time=4
