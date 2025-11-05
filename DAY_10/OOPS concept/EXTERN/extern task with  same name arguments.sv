class practice;
      extern virtual task display(bit[31:0]addr,data);
    endclass
        task  practice::display(bit[31:0]addr,data);
         $display("data=%0d addr=%0d",data,addr);
        endtask
        module packet;
          practice p;
          initial begin
            p=new();
            p.display(10,20);
          end
        endmodule

        //op
        # data=20 addr=10
