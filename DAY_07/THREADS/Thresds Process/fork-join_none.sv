module fork_join_none();
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
join_none
$display($time,"\toutside fork-join");
$display("---------------------------------------");
$finish;
end
endmodule



output
0	outside fork-join
