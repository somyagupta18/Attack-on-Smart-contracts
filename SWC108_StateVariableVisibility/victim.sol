pragma solidity ^0.5.0;

contract Transaction {
   uint upperLimit;

   constructor() public {
      upperLimit = 10;
   }
   
   function getData() public view returns(uint) { 
       return upperLimit; 
    }
}

contract Attacker is Transaction {
   C private c;
   uint private vars;
   constructor() public {
      c = new C();
   }  

   function updateLimit(uint newLimit) public{
       upperLimit = newLimit; 
   }

}