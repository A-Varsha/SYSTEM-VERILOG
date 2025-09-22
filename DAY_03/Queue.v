module queue();
  //int j;
  int q[$];
  initial begin
  int j[0]=34;
  int j[1]=32;
  int j[2]=55;
  initial begin
   j=1;
    q.insert(1,j);
    $display(q);
    q.delete(1);
    $display(q);
    q.push_front(88);
    $display(q);
    q.push_back(33);
    $display(q);
    q.pop_back();
    $display(j,",",q);
    q.pop_front();
    $display(j,",",q);
    q.reverse();
    $display(q);
    q.sort();
    $display(q);
    q.rsort();
    $display(q);
    q.shuffle();
    $display(q);
  end
  end
endmodule

    
    
    
