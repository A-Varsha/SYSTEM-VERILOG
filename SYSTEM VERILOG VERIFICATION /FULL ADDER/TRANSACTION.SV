class transaction;
  rand bit a;
  rand bit b;
  rand bit cin;
   bit sum;
  bit carry;
  
  
  function void display (string name);
    $display("      %s        ",name);
    $display("a=%0d b=%d cin=%d sum=%0d carry=%0d",a,b,cin,sum,carry);
    $display("       ");
  endfunction 
endclass
