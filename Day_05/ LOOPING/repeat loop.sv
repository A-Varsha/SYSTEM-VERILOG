module repeat_loop();
int array [5]='{100,200,300,400,500};
int i;
initial begin
repeat ($size (array))begin
$display (" array [%0d]=%0d",i,array[i]);
i++;
end
repeat (3)
$display("varsha");
end
endmodule

output
#  array [0]=100
#  array [1]=200
#  array [2]=300
#  array [3]=400
#  array [4]=500
# varsha
# varsha
# varsha
