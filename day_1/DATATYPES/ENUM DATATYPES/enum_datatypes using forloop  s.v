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
# element is carrot and its value is  0
# element is brinjal and its value is 1
# element is onion and its value is   2
# element is potato and its value is  3
# element is tomato and its value is  4
# element is tangy and its value is   6
