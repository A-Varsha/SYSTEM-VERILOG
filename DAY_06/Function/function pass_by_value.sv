module pass_value();
int a,result;
initial begin
a=$urandom%10;
$display("before the function :a=%0d result =%0d",a,result);
result=mult(a);
$display("after the function: a=%0d result =%0d",a,result);
end
function int mult(int a);
a=a+5;
return a*10;
endfunction
endmodule

output
# before the function :a=1 result =0
# after the function: a=1 result =60
