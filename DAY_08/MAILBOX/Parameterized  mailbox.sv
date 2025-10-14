module mailbox();
mailbox #(string) mb=new();
task  automatic process_a();
string name="swetha";
mb.put(name);
$display("put data=%s",name);
name="devika";
mb.put(name);
$display("put data =%s",name);
endtask

task automatic  process_b();
string name;
mb.get(name);
$display("retrived data=%s",name);
mb.get (name);
$display("retrived data=$s",name);
endtask
initial begin
process_a();
process_b();
end
endmodule

output
# put data=swetha
# put data =devika
# retrived data=swetha
# retrived data=$sdevika
