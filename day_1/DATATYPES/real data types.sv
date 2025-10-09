module real_datatype();
real real1,real2,real3;
integer i1;
bit [63:0]b1;

initial begin
real1=124.55;
i1=$rtoi(real1);
real2=$itor(i1);
b1=$realtobits(real1);
real3=$bitstoreal(b1);
end
initial begin
#10;
$display("real1=%0f real2=%0f i1=%0d",real1,real2,i1);
$display("b1=%0d real3=%0f",b1,real3);
#10;
$finish;
end
endmodule

output
# real1=124.550000 real2=124.000000 i1=124
# b1=4638464844024197939 real3=124.550000
