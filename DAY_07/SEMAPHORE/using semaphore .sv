module semaphore();
semaphore sem=new(1);
task  write_mem();
sem.get();
$display("before writing into memory");
#5ns;
$display("completed writing into memory");
sem.put();
endtask
 task read_mem();
sem.get();
$display("before reading into memory");
#4ns;
$display("completed reading into memory");
sem.put();
endtask
initial begin
fork
write_mem();
read_mem();
join
end
endmodule

output
# before writing into memory
# completed writing into memory
# before reading into memory
# completed reading into memory
