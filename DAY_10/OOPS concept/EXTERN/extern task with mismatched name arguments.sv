 class practice;
      extern virtual task display(bit[31:0]addr,data);
    endclass
        task  practice::display(bit[31:0]addr_t,data_t);
          $display("data_t=%0d addr_t=%0d",data_t,addrt);
        endtask
        module packet;
          practice p;
          initial begin
            p=new();
            p.display(10,20);
          end
        endmodule

        //op
        ** Error: design.sv(724): Name of argument 'addr_t' for extern method 'display' does not match prototype.
        ** Error: design.sv(724): Name of argument 'data_t' for extern method 'display' does not match prototype
