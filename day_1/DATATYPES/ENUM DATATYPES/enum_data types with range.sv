module enum_datatypes();
  typedef enum{carrot,brinjal,onion,potato,tomato}veg_e;
  typedef enum logic[3:0]{sweet=3,tangy=6,sour,salt}taste_e;
  veg_e veg;
  taste_e taste;
  initial begin
    for(int i=0;i<5;i++)begin
      $display("element is %s and its value is %d",veg.name(),veg);
      veg=veg.next();
    end
    taste=tangy;
    $display("element is %s and its value is %d",taste.name(),taste);
  end
endmodule

output
# element is street3 and its value is 0
# element is street5 and its value is 2
