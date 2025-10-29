      class packet;
        byte packet_id;
        static byte no_of_packets;
        
        static function new();
          no_of_packets++;
          //packet_id++;// non static variable cannot assign into static function it give compiler error
        endfunction
        
          function void display();
          $display(" ");
            $display(" packet_id=%0d no_of_packets=%0d",packet_id,no_of_packets);
          $display(" ");
        endfunction
      endclass
module swetha;
  packet pkt [3];
  initial begin
    foreach(pkt[i])begin
      pkt[i]=new();
      pkt[i].display();
    end
  end
endmodule
//op

#  packet_id=0 no_of_packets=1
#  
#  
#  packet_id=0 no_of_packets=2
#  
#  
#  packet_id=0 no_of_packets=3
