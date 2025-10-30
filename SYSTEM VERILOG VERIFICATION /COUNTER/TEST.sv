program test ( intf vif);
  environment env; 
  event g1;
  
  initial begin
    env = new(vif); 
    #2;
    env.run();
    @env.g1;
  end
endprogram
