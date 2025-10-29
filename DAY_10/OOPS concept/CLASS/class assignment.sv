 class dharshini;
   bit[2:0]addr;
   bit[2:0]data;
   bit [2:0]write;
   string name;
   function new();
     addr=32'h15;
     data=32'h01;
     write=3'd10;
     name="swathi";
   endfunction
   
   function void display();
     $display("   ");
     $display("addr=%0h",addr);
     $display("data=%0h",data);
     $display("write=%0b",write);
     $display("name=%s",name);
   endfunction
   
 endclass
module devika;
  dharshini dharsu_1;
  dharshini dharsu_2;
  initial begin
    dharsu_1=new();
    dharsu_1.display();
    dharsu_2=dharsu_1;
    dharsu_2.display();
    dharsu_2.addr=32'h01;
    dharsu_2.name="alupi";
    dharsu_2.display();
  end
endmodule

//op
# addr=5
# data=1
# write=10
# name=swathi
#    
# addr=5
# data=1
# write=10
# name=swathi
#    
# addr=1
# data=1
# write=10
# name=alupi
