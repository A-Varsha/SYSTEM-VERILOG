class casting;
  real R;
  int id;
function void display();
    R=(2.3*3.2);
    id=int'(R);
    $display("value of R =%0f",R);
    $display("value of id=%0d",id);
  endfunction
  endclass
module cast;
  casting c;
  initial begin
    c=new();
    c.display();
  end
endmodule
//op
# value of R =7.360000
# value of id=7
