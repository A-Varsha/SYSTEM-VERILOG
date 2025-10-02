module for_loop;
int array[10];
initial begin
for (int i = 0; i < $size(array); i++) begin
array[i] = i*i;
end
for (int i = 0; i < $size(array); i++) begin
$display("array[%0d] = %0d", i, array[i]);
end
end
endmodule
