// Code your design here
package pkg_a;
int data=5;
int id_a=1;
function pkg_funct();
  $display("pkg_a:inside pkg_funct,data=%0d,id_a=%0d",data,id_a);
endfunction
endpackage
package pkg_b;
import pkg_a::*;
int data=10;
int id_b=2;
function pkg_funct();
  $display("pkg_b:inside pkg_funct,data=%0d,id_b=%0d",data,id_b);
endfunction
endpackage
package pkg_c;
import pkg_b::*;
int data =15;
int id_c=3;
function pkg_funct();
  $display("pkg_c:inside pkg_funct,data=%0d,id_c=%0d",data,id_c);
endfunction
endpackage
import pkg_c::*;
module package_ext;
  initial begin
    pkg_a::pkg_funct();
    pkg_b::pkg_funct();
    pkg_c::pkg_funct();
  end
endmodule


output
# KERNEL: pkg_a:inside pkg_funct,data=5,id_a=1
# KERNEL: pkg_b:inside pkg_funct,data=10,id_b=2
# KERNEL: pkg_c:inside pkg_funct,data=15,id_c=3
