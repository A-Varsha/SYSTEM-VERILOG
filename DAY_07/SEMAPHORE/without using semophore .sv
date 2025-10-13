module semaphore();
task  write_mem();
$display("before writing into memory");
#5ns;
$display("completed writing into memory");
endtask
 task read_mem();
$display("before reading into memory");
#4ns;
$display("completed reading into memory");
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
# before reading into memory
# completed reading into memory
# completed writing into memory
