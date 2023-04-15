pragma solidity ^0.4.0;
contract victim{
    uint gasremaining;
    constructor() public payable{
    }

    function getGas() public returns (uint){
        gasremaining = msg.gas;
        return gasremaining;
    }

}
/*Several functions and operators in Solidity are deprecated. 
Using them leads to reduced code quality. 
With new major versions of the Solidity compiler, 
deprecated functions and operators may result in side effects and compile errors.

Deprecated	            Alternative
suicide(address)	    selfdestruct(address)
block.blockhash(uint)	blockhash(uint)
sha3(...)	            keccak256(...)
callcode(...)	        delegatecall(...)
throw	                revert()
msg.gas	                gasleft
constant	            view
var	corresponding type name
*/