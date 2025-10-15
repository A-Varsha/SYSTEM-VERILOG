module mailbox();
mailbox mb=new(3);
task process_a();
int value;
repeat(3)begin
value =$urandom_range(1,50);
mb.put(value);
$display("put dataq=%d",value);
end
$display("  ");
endtask
task process_b();
int value;
mb.peek(value);
$display("peek data=%0d",value);
mb.peek(value);
$display("peek data=%0d",value);
if(mb.try_peek(value))
$display("sucessfully try_peek data =%0d",value);
else
begin
$display("failed in try_peek ");
end
$display("");
repeat(3)begin
mb.get(value);
$display("get data=%0d",value);
end
$display("");
if(mb.try_peek(value))
$display("sucessfully try_peek data =%0d",value);
else
begin
$display("failed in try_peek ");
end
endtask
initial begin
fork
process_a();
process_b();
join
end
endmodule

output
# put dataq=         39
# put dataq=         36
# put dataq=         28
#   
# peek data=39
# peek data=39
# sucessfully try_peek data =39
# 
# get data=39
# get data=36
# get data=28
# 
# failed in try_peek 
