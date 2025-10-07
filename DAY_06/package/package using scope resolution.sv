package pkg_a;
int data=5;
int id_a=1;
function  pkg_funct();
$display("pkg_a:inside pack_funct,data=%0d",data);
endfunction 
endpackage
package pkg_b;
//import pkg_a;
int data=10;
int id_b=2;
function pkg_funct();
$display("pkg_b:inside pack_funct,data=%0d",data);
endfunction
endpackage
import pkg_a::*;
import pkg_b::*;
module package_ext;
initial begin
pkg_a::pkg_funct();
pkg_b::pkg_funct();
end
endmodule
output
# KERNEL: pkg_a:inside pack_funct,data=5
# KERNEL: pkg_b:inside pack_funct,data=10
