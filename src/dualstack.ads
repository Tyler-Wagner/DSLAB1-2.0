with Ada.Text_IO; use Ada.Text_IO;

generic 
   type message is private;
   
   Capacity: Natural := 0;

package DualStack is
   procedure pushMeat(msg: in message);
   
   procedure pushVeg(msg: in message);
   
   procedure popStack(msg: out message);
   
   function popMeat return message;
   
   function popVeg return message;
   
   
   
   function stackAvail return Boolean;
   
   function stackEmpty return Boolean;
   

end DualStack;
