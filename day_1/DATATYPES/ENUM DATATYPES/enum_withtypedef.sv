module enumwith_typedef();
   typedef enum{carrot,brinjal,onion,potato,tomato}veg_e;
veg_e veg1,veg2,veg3;
initial begin
veg1=onion;
veg2=carrot;
veg3=tomato;
$display("veg1=%s\n veg2=%s\n veg3=%s\n",veg1.name(),veg2.name(),veg3.name());
end
endmodule
output
# family_1=jai
#  family_2=varsha
#  family_3=rosee
