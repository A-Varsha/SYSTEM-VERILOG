module struct_packed();
struct packed {bit[7:0] intr;
logic [23:0] addr;
}sur;
initial begin
sur.intr='hff;
$display("$stime sur=%h",sur);
$display("$stime sur.intr=%h",sur.intr);

sur='hff_ff_ff_ff;
$display("$stime  sur=%h",sur);

sur='{intr:'h01, addr:'hf0_f0_f0_f0};
$display("$stime sur =%h",sur);

sur='{default :'h123456};
$display("$stime sur=%h",sur);

sur='{default :'h123};
$display("$stime sur=%h",sur);


sur=0;
sur=sur+'h10;
$display("$stime sur=%h",sur);
end
endmodule

output
# $stime sur=ffxxxxxx
# $stime sur.intr=ff
# $stime  sur=ffffffff
# $stime sur =01f0f0f0
# $stime sur=56123456
# $stime sur=23000123
# $stime sur=00000010
