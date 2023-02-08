package body DualStack is
   
   package IntIO is new Ada.Text_IO.Integer_IO(Integer);
   use IntIO;
   
   
   
   Capacity: Natural := 27;
   
   meatTop: Natural range 0..Capacity := 0;
   vegTop: Natural range 0 .. Capacity:= Capacity - 1;
   subtype slotindex is natural range 0..(capacity - 1);  -- Natural implies >= 0.
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
   
 
   function popMeat return message is
   begin
      
      if meatTop /= 0 then
         meatTop := meatTop - 1;
         Put_Line("Meat Sold!");
         return box(meatTop + 1);
      else
         Put_Line("Error - Stack is empty!");
      end if;
   end popMeat;
   
   
   function popVeg return message is
   begin
       
      if vegTop < (Capacity) then
         vegTop := vegTop + 1;
         Put_Line("General Product Sold!");
         return box(vegTop - 1);        
      else
         Put_Line("Error - Stack is empty!");
      end if;
   end popVeg;
   
   
   procedure popStack(msg: out message) is
   begin
      if meatTop > 0 then
         msg := popMeat;
      elsif vegTop < Capacity then
         msg := popVeg;
      else
         Put_Line("Stack empty");
      end if;
   end popStack;
   
   
   function stackAvail return Boolean is
   begin
      
      if meatTop + (Capacity - vegTop) >= Capacity - 1 then
         return false;
      else
         return True;
      end if;
   end stackAvail;
   
   function stackEmpty return Boolean is
   begin
      if meatTop /= 0 or vegTop /= Capacity then
         return False;
      else
         return True;
      end if;
   end stackEmpty;
   
   
   
   
         

end DualStack;
