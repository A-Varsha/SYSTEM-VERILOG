module reduction();
  int arr[$]='{2,4,5,3,1,6};
  int que[$];
  initial begin
    que.push_back(45);
    que.push_back(23);
    que.push_back(34);
    que.push_front(54);
    print_array_queqe();
    $display("and for:que=%0h and arr=%0h",arr.and(),que.and());
    $display("or for:que=%0h and arr=%0h",arr.or(),que.or());
    $display("xor for:que=%0h and arr=%0h",arr.xor(),que.xor());
    $display("sum for:que=%0d and arr=%0d",arr.sum(),que.sum());
    $display("product for:que=%0d and arr=%0d",arr.product(),que.product());

  end
  function void print_array_queqe();
    $display("arr=%p",arr);
    $display("que=%p",que);
  endfunction
endmodule

//op
arr='{2, 4, 5, 3, 1, 6} 
que='{54, 45, 23, 34} 
and for:que=0 and arr=0
or for:que=7 and arr=3f
xor for:que=7 and arr=2e
sum for:que=21 and arr=156
product for:que=720 and arr=1900260
           V C S   S i m u l a t i o n   R e p o r t 
