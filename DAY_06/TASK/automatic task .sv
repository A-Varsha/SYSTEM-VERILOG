module mtask();
int data,address;
task automatic pci_read(inout int data,input int address);
#10;
address =address+1;
data =data+1;
$display("$stime, \t address=%h data =%0d",address,data);
#10;
address =address+1;
data =data+1;
$display("$stime, \t address=%h data =%0d",address,data);
#10;
address =address+1;
data =data+1;
$display("$stime, \t address=%h data =%0d",address,data);
#10;
address =address+1;
data =data+1;
$display("$stime, \t address=%h data =%0d",address,data);
endtask
initial begin
address =0;
data=9;
#100 $finish(2);
end
always begin
fork
begin
#20;$display($time,,,"call pci_read");
pci_read (data,address);
end
begin
#1 ;$display($time,,,"call pci_read");
pci_read (data,address);
end
join
end
endmodule


output
# $stime, 	 address=00000002 data =15
# $stime, 	 address=00000004 data =17
# $stime, 	 address=00000003 data =16
# $stime, 	 address=00000004 data =17
#                  121  call pci_read
# $stime, 	 address=00000001 data =18
#                  140  call pci_read
# $stime, 	 address=00000002 data =19
# $stime, 	 address=00000001 data =18
# $stime, 	 address=00000003 data =20
# $stime, 	 address=00000002 data =19
# $stime, 	 address=00000004 data =21
# $stime, 	 address=00000003 data =20
# $stime, 	 address=00000004 data =21
#                  181  call pci_read
# $stime, 	 address=00000001 data =22
#                  200  call pci_read
