pragma solidity ^0.4.21;

contract GasModel{
    uint x = 100;
    function check(){
        uint a = gasleft();
        x = x + 1;
        uint b = gasleft();
        assert(b > a);
    }
}
/*
assert() as an overly assertive bully, who steals all your gas
The Solidity assert() function is meant to assert invariants. 
Properly functioning code should never reach a failing assert statement. A reachable assertion can mean one of two things:
1.A bug exists in the contract that allows it to enter an invalid state;
2.The assert statement is used incorrectly, e.g. to validate inputs.

Basically assert functions are used to check some invariants of the contracts and if they fail
to meet then the code is depreceated
eg. assert(owner == "some address")
if this fails then the contract has been hacked 
Assert are also flaged by Auditing tools to check invariants carefully.
*/
