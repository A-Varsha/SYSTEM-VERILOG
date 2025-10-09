module bit_data_type();
bit a;
bit [3:0]b;
logic[3:0]val;
initial begin
a=1;
b=4'hf;
$display("new values:a=%b b=%0h",a,b);
b=16'h481a;
$display("b=%0h",b);
end
endmodule


output
# new values:a=1 b=f
# b=a
