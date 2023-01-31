

package body DualStacks is

   package IntIO is new Ada.Text_IO.Integer_IO(Integer);
   use IntIO;
   
   capacity: Natural := 21;
   
   subtype stackindex is Natural range 0..(capacity - 1);
   meatTop := 0;
   vegTop := 21; --21 can you do something for me
   --box: array(stackindex) of message; -- Might not need for this since this is really just a buffer
   
   procedure pushStack(msg: in Message; Food_Type: in Food_Type) is --Might not need Food_Type
   begin
      
      if Food_Type = GrainVegetable then
         if vegTop > (meatTop + 1) then
            vegTop := vegTop - 1;
            box(vegTop) := msg;
         else
            Put_Line("Error - Stack is full");
         end if;
      else
         if meatTop < (vegTop - 1) then
            meatTop := meatTop + 1;
            box(meatTop) := msg;
         else 
            Put_Line("Error - Stack is full");
         end if;
      end if;
  
   end pushStack;
   
   
   procedure popMeat(msg: out message) is
   begin
      
      if meatTop /= 0 then
         meatTop := meatTop + 1;
         Put_Line("Sold Meat");
      else
         Put_Line("Error - Stack is empty!");
      end if;
   end popMeat;
   
   
   procedure popVegtables(msg: out message) is
   begin
      if vegTop <(21) then
         vegTop := vegTop + 1;
         Put_Line("Sold non meat item");
      else
         Put_Line("Error - Stack is empty!");
      end if;
   end popVegtables;

     
   function emptyStack return Boolean is
   begin
      if((meatTop - 0) + (21 - vegTop)) > 0 then
         return True;
      else
         return False;
      end if;
   end emptyStack;
   
      
   function fullStack return Boolean is
   begin
      if meatTop > vegTop then
         return true;
      else
         return False;
      end if;
   end fullStack;
   
     
   

end DualStacks;
