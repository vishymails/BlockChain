pragma solidity ^0.7.0;
contract SolidityTest {
   uint storedData; // State variable
   constructor() public {
      storedData = 10;   
   }

   function getResult() public view returns(uint){
      uint a = 1; // local variable
      uint b = 2;
      uint result = a + b;
      return result; //access the local variable
   }

   function getResult1() public view returns(uint)
   {
       return 100;
   }
}