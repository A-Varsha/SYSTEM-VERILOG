module value_argument_task();
logic[31:0]data;
int addr;
int regf,gnt;

task regt(logic[31:0]data ='d1234 ,string s="hi");

$display("data=%0d  string=%s",data,s);
endtask
initial begin
regt(.data('d1234),.s("hi"));
regt(.data(),.s());
regt(.data('d2345),.s("bye"));
regt(.data('d6785));
end
endmodule

output
# data=1234  string=hi
# data=1234  string=hi
# data=2345  string=bye
# data=6785  string=hi
