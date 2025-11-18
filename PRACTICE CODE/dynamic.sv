module dyanamic;
  int array[];
  int i;
  initial begin
    
    array='{2,4,6,4,9};
    foreach(array[i])begin
    $display("array=%p",array);
    $display("size of an array=%p",array.size());
    $display("size of an array=%p",array);
    array=new[8](array);
    foreach(array[i])begin
      
    $display("size of an array=%p",array.size());
    $display("size of an arry=%p",array);
    array.reverse();
    $display("array=%p",array);
      array.shuffle();
      $display("array=%p",array);
      array.sort();
      $display("array=%p",array);
      array.rsort();
      $display("array=%p",array);
    array=new[6];
    $display("size of an array=%p",array.size());      
    $display("size of an array=%p",array);
    array.delete;
    $display("size of an array=%p",array.size());  
    $display("size of an array=%p",array);
  end
    end
  end
endmodule

//op
array='{2, 4, 6, 4, 9} 
size of an array=          5
size of an array='{2, 4, 6, 4, 9} 
size of an array=          8
size of an arry='{2, 4, 6, 4, 9, 0, 0, 0} 
array='{0, 0, 0, 9, 4, 6, 4, 2} 
array='{4, 4, 2, 9, 0, 6, 0, 0} 
array='{0, 0, 0, 2, 4, 4, 6, 9} 
array='{9, 6, 4, 4, 2, 0, 0, 0} 
size of an array=          6
size of an array='{0, 0, 0, 0, 0, 0} 
size of an array=          0
size of an array='{}
           V C S   S i m u l a t i o n   R e p o r t 
