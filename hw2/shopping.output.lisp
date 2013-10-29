
Initial  : 
((LOCATION HOME) (LOCATION HARDWARE-STORE) (LOCATION SUPER-MARKET)
 (AT SHOPPER HOME) (AT DRILL HARDWARE-STORE) (AT MILK SUPER-MARKET)
 (AT BANANA SUPER-MARKET) (SELLS HARDWARE-STORE DRILL)
 (SELLS SUPER-MARKET MILK) (SELLS SUPER-MARKET BANANA))

Step 1  : (GO HOME SUPER-MARKET)   Created 3 
           0  -> (AT SHOPPER HOME)   
Step 2  : (BUY BANANA SUPER-MARKET)   Created 5 
           0  -> (SELLS SUPER-MARKET BANANA)
           3  -> (AT SHOPPER SUPER-MARKET)
Step 3  : (BUY MILK SUPER-MARKET)   Created 4 
           0  -> (SELLS SUPER-MARKET MILK)
           3  -> (AT SHOPPER SUPER-MARKET)
Step 4  : (GO SUPER-MARKET HARDWARE-STORE)   Created 2 
           3  -> (AT SHOPPER SUPER-MARKET)
Step 5  : (BUY DRILL HARDWARE-STORE)   Created 1 
           0  -> (SELLS HARDWARE-STORE DRILL)
           2  -> (AT SHOPPER HARDWARE-STORE)
Step 6  : (GO HARDWARE-STORE HOME)   Created 6 
           2  -> (AT SHOPPER HARDWARE-STORE)

Goal    : 
(AND (HAS SHOPPER DRILL) (HAS SHOPPER MILK) (HAS SHOPPER BANANA)
 (AT SHOPPER HOME))
           6  -> (AT SHOPPER HOME)   
           5  -> (HAS SHOPPER BANANA)
           4  -> (HAS SHOPPER MILK)  
           1  -> (HAS SHOPPER DRILL) 
Facts:
Complete!

UCPOP Stats: Initial terms = 10;   Goals = 5 ;  Success (6 steps)
      Created 402 plans, but explored only 250
      CPU time:    0.7345 sec
      Branching factor:  1.244
      Working Unifies: 2800
      Bindings Added: 203 
