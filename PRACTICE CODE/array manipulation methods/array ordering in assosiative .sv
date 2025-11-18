module sata();
  int array_1[*];
  int array_2[*];
  int array_3[*];
  int array_4[*];
  initial begin
    array_1[5]=2;
    array_1[3]=3;
    array_1[6]=4;
    array_1[2]=6;
    
    array_2[5]=2;
    array_2[3]=3;
    array_2[6]=4;
    array_2[2]=6;
    
    array_3[5]=2;
    array_3[3]=3;
    array_3[6]=4;
    array_3[2]=6;
    
    array_4[5]=2;
    array_4[3]=3;
    array_4[6]=4;
    array_4[2]=6;
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
before:shuffle='{0x2:6, 0x3:3, 0x5:2, 0x6:4} 
after:shuffle='{0x2:4, 0x3:2, 0x5:6, 0x6:3} 
sort
before:sort='{0x2:6, 0x3:3, 0x5:2, 0x6:4} 
after:sort='{0x2:2, 0x3:3, 0x5:4, 0x6:6} 
rsort
before:rsort='{0x2:6, 0x3:3, 0x5:2, 0x6:4} 
after:rsort='{0x2:6, 0x3:3, 0x5:2, 0x6:4} 
reverse
before:reverse='{0x2:2, 0x3:3, 0x5:4, 0x6:6} 
after:reverse='{0x2:6, 0x3:4, 0x5:3, 0x6:2} 
           V C S   S i m u l a t i o n   R e p o r t
