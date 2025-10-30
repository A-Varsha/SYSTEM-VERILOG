class transaction #(parameter width = 2, type id = bit [2:0]);
  bit[width-1:0]data;
  id brun ;
   
  
  function void display();
    $display("data=%0d brun=%0d",data,brun);
  endfunction
endclass

module trump;
  transaction tr_1;
  transaction #(3,int)tr_2;
  
  initial begin
    tr_1=new();
    tr_2=new();
    
    tr_1.data=7;
    tr_1.brun=15;
    tr_1.display();
    
    tr_2.data=7;
    tr_2.brun=15;
    tr_2.display();
  end
endmodule

//op
# run -all
# data=3 brun=7
# data=7 brun=15
