module disable_fork();
initial begin
$display("-------------------------------------------");
//fork1
fork
//process1
begin
$display($time,"\tprocess1 of fork1 started");
#5;
$display($time,"\tprocess1 of fork1 finished");
end
//process2
begin
$display($time,"\tprocess2 of fork1 started");
#20;
$display($time,"\tprocess2 of fork1 finished");
end
join_any
//fork2
fork
//process1
begin
$display($time,"\tprocess1 of fork2 started");
#5;
$display($time,"\tprocess1 of fork2 finished");
end
//process2
begin
$display($time,"\tprocess2 of fork2 started");
#20;
$display($time,"\tprocess2 of fork2 finished");
end
join_none
disable fork;
$display("------------------------------");
$display($time,"\t after disable fork");
$display("------------------------------");
end
endmodule

  output
   0	process1 of fork2 started
#0	 sub_process started
#5	process1 of fork2 finished
#5	 after disable fork

