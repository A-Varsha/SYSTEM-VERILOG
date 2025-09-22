// Code your design here
module associative_array();
  typedef enum  {trans,receive,repeater}tr_type;
  bit[7:0] array_enum[tr_typr];
  bit[7:0] array_int [int];
  initial begin
    array_enum[trans]=10;
    array_enum[receiver]=20;
    array_enum[repeater]=30;
    foreach(array_enum[i])
      $display("array_enum[%s]=%0d",i,name(),array_enum[i]);
    array_int[4]=7;
    array_int[3]=6;
    array_int[5]=8;
    foreach(array_int[i])
      $display("array_int[%0d]=%0d",i,array_int[i]);
  end
endmodule
    
