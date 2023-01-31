with Ada.Text_IO; use Ada.Text_IO;

generic 
   type message is private;

package DualStack is
   procedure pushMeat(msg: in message);
   
   procedure pushVeg(msg: in message);
   
   procedure popMeat(msg: out message);
   
   procedure popVeg(msg: out message);
   
   function stackAvail return Boolean;

end DualStack;
