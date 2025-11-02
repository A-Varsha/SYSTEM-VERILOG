program test(intf vif);
  environment env;
  initial begin
    env=new(vif);
    #1;
    env.run();
  end
endprogram
    
