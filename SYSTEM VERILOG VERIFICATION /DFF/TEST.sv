program test(intf.dff_tb intf);
  environment env;
  initial begin
    env = new(intf);
    env.runn();
  end
endprogram
