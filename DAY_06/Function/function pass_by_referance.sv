module pass_ref();
int a, result;
initial begin
a=$urandom %7;
$display("before calling function :a=%0d result =%0d",a,result);
result =mult(a);
$display("after calling function : a=%0d result =%0d",a,result);
end
function automatic int mult( ref int a);
a=a+5;
return a*10;
endfunction 
endmodule

output
# before calling function :a=4 result =0
# after calling function : a=9 result =90
