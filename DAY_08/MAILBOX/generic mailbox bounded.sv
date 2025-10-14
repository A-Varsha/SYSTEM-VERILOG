mailbox mb=new(3);
task  automatic process_a();
int value =5;
string name="STRING";
mb.put(value);
$display("put data =%0d ",value );
mb.put("STRING");
$display("put data=%s",name);
endtask
task  automatic process_b();
int value;
string name;
mb.get (value);
$display("retrived data=%0d",value);
mb.get(name);
$display("retrived data =%s",name);
endtask
initial begin
fork
process_a();
process_b();
join
end
endmodule

# put data =5 
# put data=STRING
# retrived data=5
# retrived data =STRING
