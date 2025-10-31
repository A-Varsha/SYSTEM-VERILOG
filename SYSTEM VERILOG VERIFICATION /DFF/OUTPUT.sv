# run -all
# Time=0 | rst=1 | clk=0 | d=0 | q=x 
# Time=5 | rst=1 | clk=1 | d=0 | q=0 
#        monitor class signals        
# $time=6 rst=1 d=0 q=0
#   
# SCB: DUT=0/1 REF=0/0   PASS
# Time=8 | rst=0 | clk=1 | d=0 | q=0 
# Time=10 | rst=0 | clk=0 | d=0 | q=0 
# Reset released at time 15
# Time=15 | rst=0 | clk=1 | d=1 | q=1 
#        monitor class signals        
# $time=16 rst=0 d=1 q=1
#   
# SCB: DUT=1/0 REF=1/0   PASS
# Time=20 | rst=0 | clk=0 | d=0 | q=1 
#        driver class signals        
# $time=25 rst=1 d=0 q=0
#   
# Time=25 | rst=0 | clk=1 | d=0 | q=0 
# Time=30 | rst=0 | clk=0 | d=1 | q=0 
#        driver class signals        
# $time=35 rst=0 d=1 q=0
