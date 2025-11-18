module sata();
  int array_1[4];
  int array_2[4];
  int array_3[4];
  int array_4[4];
  initial begin
    array_1='{7,2,4,5};
    array_2='{6,3,2,1};
    array_3='{6,7,8,9};
    array_4='{6,7,8,9};
  end
  initial begin
    $display("shuffle");
    $display("before:shuffle=%p",array_1);
    array_1.shuffle;
    $display("after:shuffle=%p",array_1);
    $display("sort");
    $display("before:sort=%p",array_2);
    array_2.sort;
    $display("after:sort=%p",array_2);
    $display("rsort");
    $display("before:rsort=%p",array_3);
    array_1.rsort;
    $display("after:rsort=%p",array_3);
    $display("reverse");
    $display("before:reverse=%p",array_2);
    array_2.reverse;
    $display("after:reverse=%p",array_2);
    end
endmodule

//op
shuffle
before:shuffle='{7, 2, 4, 5} 
after:shuffle='{5, 4, 7, 2} 
sort
before:sort='{6, 3, 2, 1} 
after:sort='{1, 2, 3, 6} 
rsort
before:rsort='{6, 7, 8, 9} 
after:rsort='{6, 7, 8, 9} 
reverse
before:reverse='{1, 2, 3, 6} 
after:reverse='{6, 3, 2, 1} 
           V C S   S i m u l a t i o n   R e p o r t
