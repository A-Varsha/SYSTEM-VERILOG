module do_while();
int count;
initial begin
do begin
$display("value of count =%0d",count);
count++;
end
while(count<10);
end
endmodule

output
# value of count =0
# value of count =1
# value of count =2
# value of count =3
# value of count =4
# value of count =5
# value of count =6
# value of count =7
# value of count =8
# value of count =9
