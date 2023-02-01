
   --in file CircularQue.ads
--
-- The software suite consists of ProductDistributionMain, 
-- Food_DataStructures, Stats_FoodDistribution, GateKeeperService,
-- Distribution_Service, CircularQue and Food_SalesService.
--
-- With the exception of ProductDistributionMain this suite represents the software
-- to manage an "embedded" planetary system food receiving and distribution system.
-- The Distribution_Service module will be discarded once the embedded software required to 
-- manage the physical system is complete and installed.
--
--** This implementation of the circular queue sacrifices run-time allowing complete utillization of all queue space.
-- Message should not be sent without verifying the queue has avaliable storage space!!!!

with Ada.text_IO; use Ada.Text_IO;

generic
    type message is private;
    -- Add generic parameter to determine the size of the storage space.

 package CircularQue is

   procedure pushMeat(msg: in message);
   
   procedure pushVeg(msg: in message);
   
   procedure popMeat(msg: out message);
   
   procedure popVeg(msg: out message);
   
   function stackAvail return Boolean;

   --Add method (function or procedure) for inserting at front of queue here and in body.

end CircularQue;
