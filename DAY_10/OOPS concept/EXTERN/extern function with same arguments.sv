class practice;
      extern virtual function void display(bit[31:0]addr,data);
    endclass
       function void  practice::display(bit[31:0]addr,data);
         $display("data=%0d addr=%0d",data,addr);
       endfunction
        module packet;
          practice p;
          initial begin
            p=new();
            p.display(10,20);
          end
        endmodule
        //op
        # data=20 addr=10
