module  event_c();
event c1;
task process_a();
$display("%0t:process_a: before trigger the event",$time);
->c1;
$display("%0t:process_a:after trigger the event",$time);
endtask
task process_b();
$display("%0t:process_b: wait for the event using @",$time);
@c1;
$display("%0t:process_b: event is triggered using @",$time);
endtask
task process_c();
$display("%0t:process_c:wait for the event using wait(c1.trigger)",$time);
wait(c1.triggered);
$display("%0t:process_c: event is triggred using wait(c1.trigger)",$time);
endtask
initial begin
fork 
process_a();
process_b();
process_c();
join
end
endmodule

