package body CircularQue is

   -- in file Circular_Que.adb



    package IntIO is new Ada.Text_IO.Integer_IO(Integer);
    use IntIO;

   capacity: Natural := 21;  -- *****************  storage space. This is really just the max size the stack can be



   subtype slotindex is natural range 0..(capacity - 1);  -- Natural implies >= 0.

   front, rear: slotindex := 0;  -- insert at front, remove from rear. THIS IS WHAT YOU ARE MOVING

   mesnum : Natural range 0..(capacity-1) := 0; -- number in buff THIS IS STACK 1

   box: array(slotindex) of message; -- circular buffer

   maxMessages: Natural := capacity - 1; -- Integers >= 0. THIS IS STACK 2





   procedure acceptMessage(msg: in message) is  -- ** modify for placing in dual stacks THIS IS WHERE GENERIC FOOD GOES
   begin
      rear := rear - 1;
      if mesnum = maxMessages then
         Put_Line("ERROR - stack is full");
      else
         box(rear) := msg;
      end if;
   end acceptMessage;





   procedure retrieveMessage(msg: out message) is  -- ** modify in dual stacks to return highest priority food
   begin
      front := front + 1;
      if mesnum = maxMessages then
         Put_Line("ERROR - Stack is full");
      else
         msg := box(front);
      end if;


   end retrieveMessage;





   function CircularQueEmpty return Boolean is
   begin
      if mesnum > 0 then
         return False;
      else
         return True;
      end if;
   end CircularQueEmpty;

   function CircularQueFull return Boolean is  -- ** modify for dual stacks
      begin
      if mesnum < maxMessages then
         return False;
      else
         return True;
      end if;
   end CircularQueFull;

end CircularQue;
