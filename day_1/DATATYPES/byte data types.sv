module byte_datatypes();
byte vara;
initial begin
#10;
vara=0;
#20;
vara=2**7-1;
#25;
vara=2**7;
#30;
vara=2**8-1;
end
 initial 
$display("vara=%0d",vara);

endmodule

output
# [0] m_var_s = 'd0  (0x0)
# [30] m_var_s = 'd127  (0x7f)
# [60] m_var_s = 'd-128  (0x80)
