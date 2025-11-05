 class practice;
      bit[31:0]addr;
      bit[31:0]data;
      extern virtual task display();
    endclass
        task  practice::display();
         $display("data=%0d addr=%0d",data,addr);
        endtask
        module packet;
          practice p;
          initial begin
            
            p=new();
            p.addr=10;
            p.data=15;
            p.display();
          end
        endmodule
        //op
        # data=15 addr=10
