module mailbox();
mailbox mb=new();
task process_a();
int value;
repeat(10)begin
value=$urandom_range(1,50);
mb.put (value);
$display("put data =%0d",value);
end
endtask
task process_b();
int value;
repeat (10)begin
mb.get(value);
$display("retrived data=%0d",value);
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
# put data = 39
# put data = 36
# put data = 28
# put data = 15
# put data = 13
# put data = 29
# put data = 21
# put data = 20
# put data = 23
# put data = 38
# retrieved data = 39
# retrieved data = 36
# retrieved data = 28
# retrieved data = 15
# retrieved data = 13
# retrieved data = 29
# retrieved data = 21
# retrieved data = 20
# retrieved data = 23
# retrieved data = 38
