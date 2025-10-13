module semaphore_ex();
semaphore sema;
initial begin
sema=new(1);
fork
display();
display();
join
end
task automatic display();
sema.get();
$display($time,"\tcurrent simulation on tht time");
#30;
sema.put();
endtask
endmodule

output
#0current simulation on tht time
#30current simulation on tht time
