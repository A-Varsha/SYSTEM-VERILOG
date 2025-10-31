class transaction;
  rand bit rst;
  rand bit d;
       bit q;  
   constraint c_rst { rst dist {0:=80, 1:=20}; }
  
  function void display(string name);
    $display("       %s        ",name);
    $display("$time=%0t rst=%0b d=%0b q=%0b", $time, rst, d, q);

    $display("  ");
  endfunction
  endclass
