
typedef class c2;
  class c1;
  c2 c;
endclass
class c2;
  c1 cw;
endclass
module pack;
  initial begin
    c1 class1;
    c2 class2;
    $display("inside the class");
   end
endmodule

  //op
  # inside the class
