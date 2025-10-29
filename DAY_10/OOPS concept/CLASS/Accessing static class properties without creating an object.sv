      class packet;
        //byte packet_id;
        static byte no_of_packets;
        
         function new();
          no_of_packets++;
         //packet_id++;// non static variable cannot assign into static function it give compiler error
        endfunction
        
        static   function void display_flow();
          $display(" ");
            $display("no_of_packets=%0d",no_of_packets);
          $display(" ");
        endfunction
      endclass
module swetha;
  packet pkt [3];
  packet p;
  initial begin
    foreach(pkt[i])begin
      pkt[i]=new();
      //pkt[i].display();
    end
    
    $display("no_of_packets=%0d",p.no_of_packets);
  
  p.display_flow();
  end
endmodule

//op
# no_of_packets=3
#  
# no_of_packets=3
