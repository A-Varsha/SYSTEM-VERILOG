module funtask();
int data,address;
function int funtc1(inout  int data,input int address);
address=address+1;
data=data+1;
$display($time," address=%h data=%0d",address,data);
endfunction
initial begin
address =0;
data=9;
#1;$display($stime,"call funtc1");
void '(funtc1(data,address));
end
endmodule

output
# 10from inside the task data=1234
# 10from outside the task data =1234 
# 20from  inside the task data =2345
# 20from outside the task data =2345 
