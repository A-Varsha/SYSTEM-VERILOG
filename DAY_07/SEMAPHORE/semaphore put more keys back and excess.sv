module semaphore();
semaphore sem=new(3);

task process_a();
sem.get(3);
$display("process_a is started");
#5ns;
$display("process_a is completed");
sem.put(5);
endtask
task process_b();
sem.get(5);
$display("process_b is started");
#5ns;
$display("process_b is completed");
sem.put(5);
endtask
task process_c();
sem.get(6);
$display("process_c is started");
#5ns;
$display("process_c is finished");
sem.put(5);
endtask
initial begin
fork
process_a();
process_b();
process_c();
join
end
endmodule

output
# process_a is started
# process_a is completed
# process_b is started
# process_b is completed
