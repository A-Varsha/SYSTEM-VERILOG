package  pkg;
class transaction;
int data=5;
function  void display();
$display("data=%0d",data);
endfunction
endclass
function pkg_funct();
$display("inside pkg_function");
endfunction
endpackage
import pkg::*;
module package_ext();
initial begin
transaction tr=new();
tr.display();
pkg_funct();
end
endmodule

output
# data=5
# inside pkg_function
