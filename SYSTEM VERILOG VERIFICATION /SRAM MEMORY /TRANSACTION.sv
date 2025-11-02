
class transaction;
   //bit clk;
   bit rst;
   bit wen;
  rand bit [7:0]addr;
  rand bit [7:0]datain;
  bit [7:0]dataout;
  
  
  function void display(string name);
    $display("       %s       ",name);
    $display("$time=%0t  rst=%0b addr=%0d datain=%0b wen=%0b dataout=%0b",$time,rst,addr,datain,wen,dataout);
    $display("     ");
  endfunction
endclass
  
