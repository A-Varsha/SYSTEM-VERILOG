module signed_datatypes();
logic[7:0]r1;
logic signed [7:0]sr1;
initial begin
r1=2;
$display("r1=%d",r1);
sr1=-2;
$display("sr1=%d",sr1);
r1=r1+1;
$display("r1=%d",r1);
sr1=sr1+1;
$display("sr1=%d",sr1);
end
endmodule


output
# r1=  2
# sr1=  -2
# r1=  3
# sr1=  -1
