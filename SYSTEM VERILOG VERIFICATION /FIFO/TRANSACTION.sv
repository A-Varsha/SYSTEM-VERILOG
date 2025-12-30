`include "interface.sv"
class transaction;
  parameter DATA_WIDTH=32;
  rand  bit clk;
  rand  bit reset_n;
  rand  bit cs;
  rand  bit wr_en;
  rand  bit rd_en;
  rand  bit [DATA_WIDTH-1:0] data_in;
  bit [DATA_WIDTH-1:0] data_out;
  bit empty;
  bit full;
  
  
  function void display ( string name);
    $display("       %s       ");
   $display("$time=%0t reset_n=%0d cs=%0d wr_en=%0d rd_en=%0d  data_in=%0d", reset_n,cs,wr_en,rd_en,data_in);
  
    $display(               );
  endfunction
endclass
  
  
