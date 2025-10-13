module semaphore_ex();
semaphore sema;
initial begin
sema=new(4);
fork
display();
display();
join
end
task automatic display();
sema.get(4);
$display($time,"\tcurrent simulation on tht time");
#30;
sema.put(4);
endtask
endmodule

output
#0	current simulation on tht time
#30	current simulation on tht time
