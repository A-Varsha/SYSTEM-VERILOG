class scoreboard;
  mailbox mb1;
  //event v;
  bit [7:0]out;
  bit[7:0]meme[0:255];
 // transaction trans;
  function new( mailbox mb1);
    this.mb1=mb1;
  endfunction
   task main();
     transaction trans;
     repeat(10)begin
      transaction trans;
      trans=new();
      mb1.get(trans);
      if (trans.rst)
        out = 8'd0;
    else begin
      if (trans.wen) begin
          meme[trans.addr] = trans.datain;   
        end else begin
          out = meme[trans.addr];
          $display("[%0t],expected=%0d,observerd=%0d",$time,out,trans.dataout);

    end
    end
     if(out==trans.dataout)begin
        $display("pass");
        end else begin
          $display("fail");
          $display("scoreboard class signals");
        end
     end
       //->v;
  endtask
endclass
      
      
