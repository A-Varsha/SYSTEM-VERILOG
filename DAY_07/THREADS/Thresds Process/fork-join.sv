module fork_join();
initial begin
//$display("-----------------------------------------------    ");
fork
// ---------------
//process -1
//-----------------
begin
$display($time,"\tprocess -1 started");
#5;
$display($time,"\tprocess -1 finished");

end
//------------------
//process -2
//--------------------
begin
$display($time,"\tprocess -2 started");
#25;
$display($time,"\tprocess -2 finished");
end
join
$display($time,"\toutside fork-join");
$display("---------------------------------------");
$finish;
end
endmodule

output
 0	process -1 started
#0	process -2 started
#5	process -1 finished
#25	process -2 finished
#25	outside fork-join


