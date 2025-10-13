module semaphore();
semaphore sem=new(3);
task  write_mem();
sem.get(3);
$display("before writing into memory");
#5ns;
$display("completed writing into memory");
sem.put(3);
endtask
 task read_mem();
sem.get(2);
$display("before reading into memory");
#4ns;
$display("completed reading into memory");
sem.put(2);
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
