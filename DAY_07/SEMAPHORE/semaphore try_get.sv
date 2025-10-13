module semaphore();
semaphore sem=new(1);
task write_mem();
if(sem.try_get())
$display("write :started") ;
else
$display("write:is not allowed");
$display("before writing into memory");
#5ns;
$display("completed writing into memory");
sem.put();
endtask

task read_mem();
if(sem.try_get())
$display("read:started");
else
$display("read:is not allowed");
$display("before writing into memory ");
#4ns;
$display("completed writing into memory");
sem.put();
endtask
initial begin
write_mem();
read_mem();
end
endmodule

output
# write :started
# before writing into memory
# completed writing into memory
# read:started
# before writing into memory 
# completed writing into memory
