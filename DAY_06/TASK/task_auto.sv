module test();
task automatic add (int a,int b);
#2
$display($time," the sum is %0d",a+b);
endtask
initial 
fork
begin
$display($time,"call add(2,3)");
add(2,3);
end
begin
#1$display($time,"call add(2,3)");
add(3,4);
end
join
endmodule


output
#0call add(2,3)
#1call add(2,3)
#2 the sum is 5
#3 the sum is 7
