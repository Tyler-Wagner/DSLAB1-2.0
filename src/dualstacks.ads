with Ada.Text_IO; use Ada.Text_IO;
with Food_DataStructures; use Food_DataStructures;

generic
   type message is private;
   

package DualStacks is
   procedure pushStack(msg: in message; fType: in Food_Type);-- not passing thru anything for fType. Not needed
   
   procedure popMeat(msg: out message);
   procedure popVegtables(msg: out message);
   
   function emptyStack return Boolean;
   
   function fullStack return Boolean;


end DualStacks;
