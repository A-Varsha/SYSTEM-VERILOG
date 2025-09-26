module while_loop();
int count;
initial begin

while(count<10)begin
$display("value of  count=%0d",count);
count++;
end
end
endmodule

output
# value of  count=0
# value of  count=1
# value of  count=2
# value of  count=3
# value of  count=4
# value of  count=5
# value of  count=6
# value of  count=7
# value of  count=8
# value of  count=9
