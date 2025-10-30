program test ( intf vif);
  environment env;  
  
  initial begin
    env = new(vif); 
    #2;
    env.run();
  end
endprogram
