program test(intf vif);
  environment envi;
  initial begin
    envi = new(vif);
    envi.main();
  end
endprogram
