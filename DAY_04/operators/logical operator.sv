// Code your design here
module logical_operator();
  logic[15:0] a,b;
    int i;
    initial begin
    a=2;
    b=225;
    i=a->b;
    $display("i=%0d",i,a,b);
    i=a<->b;
    $display ("i=%0d",i,a,b); 
    end
endmodule
