class error;
  bit[31:0]error_data;
   bit err;
endclass

class transaction #(parameter width = 2, type id = error);
  bit[width-1:0]data;
  id brun ;
   
  
  function void display();
    $display("transaction:data=%0d",data);
    $display("error:error_data=%0d err=%0d",brun.error_data,brun.err);
  endfunction
endclass

module trump;
  transaction tr_1;  
  initial begin
    tr_1=new();
    tr_1.brun=new();
    
    tr_1.data=2;
    tr_1.brun.error_data=15;
    tr_1.brun.err=1;
    tr_1.display();
  end
endmodule

//op
# transaction:data=2
# error:error_data=15 err=1
