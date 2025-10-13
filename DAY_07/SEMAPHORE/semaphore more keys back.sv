module semaphore();
semaphore sem=new(3);
task  write_mem();
sem.get(3);
$display("before writing into memory");
#5ns;
$display("completed writing into memory");
sem.put(5);
endtask
initial begin
write_mem();
end
endmodule

output
# before writing into memory
# completed writing into memory
