module task_default_arg();
logic[31:0]data;
int addr;
int regf ;
task regt(logic[31:0]data='h1234,int add,int regf=0);
$display("data=%0h addr=%0h regf=%0d",data,addr,regf);
endtask
initial begin
regt(,addr,);
regt(,'h1234,);
regt('h2345,0);
regt(0,1,1);
end
endmodule

output
# data=1234 addr=0 regf=0
# data=1234 addr=0 regf=0
# data=2345 addr=0 regf=0
# data=0 addr=0 regf=1
