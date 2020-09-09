/*
Withdrawal pattern ensures that direct transfer call is not made which poses a security threat. Following contract is showing the insecure use of transfer call to send ether.
*/


pragma solidity ^0.5.0;

contract Test {
   address payable public richest;
   uint public mostSent;

   constructor() public payable {
      richest = msg.sender;
      mostSent = msg.value;
   }
   function becomeRichest() public payable returns (bool) {
      if (msg.value > mostSent) {
         // Insecure practice
         richest.transfer(msg.value);
         richest = msg.sender;
         mostSent = msg.value;
         return true;
      } else {
         return false;
      }
   }
}