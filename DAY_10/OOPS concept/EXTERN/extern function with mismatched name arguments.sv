 class practice;
      extern virtual function void display(bit[31:0]addr,data);
    endclass
        function void  practice::display(bit[31:0]addr_t,data_t);
          $display("data_t=%0d addr_t=%0d",data_t,addrt);
       endfunction
        module packet;
          practice p;
          initial begin
            p=new();
            p.display(10,20);
          end
        endmodule

        //op
        -- Compiling package design_sv_unit
** Error: design.sv(724): Name of argument 'addr_t' for extern method 'display' does not match prototype.
** Error: design.sv(724): Name of argument 'data_t' for extern method 'display' does not match prototype.
-- Compiling module packet
