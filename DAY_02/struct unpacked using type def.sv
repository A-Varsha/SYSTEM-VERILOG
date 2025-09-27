module struct_unpacked();
typedef struct {bit[7:0] intr;
logic[15:0] addr;
}sur;
//sur s0,s1;

initial begin
sur s0,s1;
s0.intr='hff;
$display(" $stime  s0=%p",s0);
$display(" $stime s0.intr=%p",s0.intr);

s1='{'h00,'h123456};
$display("$stime s1 =%p",s1);

end
endmodule 

output
#  $stime  s0='{intr:255, addr:x}
#  $stime s0.intr=255
# $stime s1 ='{intr:0, addr:13398}
