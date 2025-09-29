module string_methods();

string s1="hello";
string s2="hello world";
string s4;
string s5="Good Bye";
string s6="123_456_cc";
string s7="fff_000_bb";
byte x;
integer s2len,s1len,i1,i2;
initial begin
#15;
s2len=s2.len();
$display("string length s2=%0d",s2len);
s1.putc(0,"c");
$display("string s1=%s",s1);
x=s1.getc(0);
$display("0th character of the string 'cello'=%s",x);
s4=s2.toupper();
$display("upper case of the 'hello world'=%s",s4);
s4=s5.tolower();
$display("lower case of 'GOOD BYE'=%s",s4);
i1=s6.atoi();
$display("s6.atoi of the string s6'123_456_cc'=%0d",i1);
s6.itoa(i1);
$display("s6.itoa=%s",s6);
i2=s7.atohex();
$display("s7.atohex of the string s7'fff_000_bb' =%h",i2);
end
endmodule


output
# string length s2=11
# string s1=cello
# 0th character of the string 'cello'=c
# upper case of the 'hello world'=HELLO WORLD
# lower case of 'GOOD BYE'=good bye
# s6.atoi of the string s6'123_456_cc'=123456
# s6.itoa=123456
# s7.atohex of the string s7'fff_000_bb' =fff000bb
