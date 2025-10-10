module enum_methods();
typedef enum bit [2:0]{sunday,monday,tuesday,wednesday,thrusday,friday,saturday}weeks_e;
weeks_e week;
initial begin
$display("total element of enum is %0d",week.num());
week=week.first();
$display("first element of is %0d and its name is %s",week,week.name());
week=week.last();
$display("last element of is %0d and its name is %s",week,week.name());
week=wednesday;
$display("next element is %s",week.next().name());
$display("current element is %s",week.name());
$display("prev element is %s",week.prev(2).name());
end
endmodule



output
# total element of enum is 7
# first element of is 0 and its name is sunday
# last element of is 6 and its name is saturday
# next element is thrusday
# current element is wednesday
# prev element is monday
