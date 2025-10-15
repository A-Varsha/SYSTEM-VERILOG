module event_e();
event e1;
task process_a();
$display("@%0t:before the event is trigger e1",$time);
->e1;
$display("@%0t:after the event is trigger e1",$time);
endtask
task process_b();
#10;
$display("@%0t:waiting for the event e1",$time);
wait (e1.triggered);
$display("@%0t:event is triggerd",$time);
endtask
initial begin
fork
process_a();
process_b();
join
end
endmodule


output
# @0:before the event is trigger e1
# @0:after the event is trigger e1
# @10:waiting for the event e1
