class transaction;
   rand bit rst;
  bit count;
  
function void func(string name = "default");
    $display("   %s      ",name);
    $display("$time=%0t rst=%b count =%b",$time,rst,count);
    $display("       ");
  endfunction
endclass
