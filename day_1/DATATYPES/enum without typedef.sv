module enum_without_typedef();
  enum {varsha,jai,anna,rosee}family_a;;
  initial begin
    family_a=jai;
    $display("element is %s and its value is %0d",family_a.name(),family_a);
  end
endmodule

output
element is jai and its value is 1
