module data_types();
integer a;
int b;
shortint c;
longint d;

logic[7:0]a1;
logic signed [7:0]s1;
byte b1;
reg [7:0]r1;
initial begin
a='hxxxz_1234;
b=-1;
c='hxzfz_1020;
d='hxxxx_ffff_zzzz_ffff;
a1=-1;
s1=-1;
b1=-1;
r1='hxxxx_xxxx;
end
initial begin
#10;
$display("a=%h b=%h c=%h d=%h",a,b,c,d);
$display("a1=%0d s1=%0d b1=%0d r1=%b",a1,s1,b1,r1);
end

endmodule


output
# a=xxxz1234 b=ffffffff c=1020 d=0000ffff0000ffff
# a1=255 s1=-1 b1=-1 r1=xxxxxxxx
