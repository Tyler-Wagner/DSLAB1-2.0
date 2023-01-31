package body DualStack is
   
   package IntIO is new Ada.Text_IO.Integer_IO(Integer);
   use IntIO;
   
   
   
   Capacity: Natural := 21;
   
   subtype slotindex is natural range 0..(capacity - 1);  -- Natural implies >= 0.
   
   meatTop, meatDel := 0;
   vegTop, vegDel := Capacity;
   
   box: array(slotindex) of message; -- stack buffer
   
   
   
   procedure pushMeat(msg: in message) is
   begin
      
      if meatTop < (vegTop - 1) then
         meatTop := meatTop + 1;
         box(meatTop) := msg;
      else
         Put_Line("Error - Stack is full!");
      end if;
   end pushMeat;
   
   
   procedure pushVeg(msg: in message) is
   begin
      
      if vegTop > (meatTop + 1) then
         vegTop := vegTop - 1;
         box(vegTop) := msg;
      else
         Put_Line("Error - Stack is full!");
      end if;
   end pushVeg;
   
   
   procedure popMeat(msg: out message) is
   begin
      
      if meatTop /= 0 then
         meatTop := meatTop - 1;
         Put_Line("Meat Sold!");
      else
         Put_Line("Error - Stack is empty!");
      end if;
   end popMeat;
   
   
   procedure popVeg(msg: out message) is
   begin
       
      if vegTop < (21) then
         vegTop := vegTop + 1;
         Put_Line("General Product Sold!");
      else
         Put_Line("Error - Stack is empty!");
      end if;
   end popVeg;
   
   
   function stackAvail return Boolean is
   begin
      
      if meatTop + (Capacity - vegTop) >= Capacity - 1 then
         return false;
      else
         return True;
      end if;
   end stackAvail;
   
   
   
   
         

end DualStack;
