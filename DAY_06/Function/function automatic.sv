module funct_auto();
integer result;
function automatic integer factorial(input [3:0]operand);
if(operand>1)
factorial=factorial(operand-1)*operand;
else
factorial=1;
endfunction
initial begin
for(int n=0;n<7;n++)begin
result=factorial (n);
$display("%0d factorial =%0d",n,result);
end
end
endmodule

output
# 0 factorial =1
# 1 factorial =1
# 2 factorial =2
# 3 factorial =6
# 4 factorial =24
# 5 factorial =120
# 6 factorial =720
