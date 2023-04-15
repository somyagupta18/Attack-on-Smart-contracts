pragma solidity 0.5.0;

contract base{
    uint public value;
    constructor() public
    {
        value=0;
    }
    function addOne() private {
        value += 1;
    }
}

contract derived is base{
    function addOne() private{
        value += 2;
    }
    function update() public returns (uint){
        addOne();
        return value;
    }
}

/* privateCanBeOverridden : Private methods can be overridden by inheriting contracts.
While private methods of base contracts are not visible and cannot be called directly 
from the derived contract, it is still possible to declare a function of the same name 
and type and thus change the behaviour of the base contract's function.

- First Introduced: 0.3.0
- Fixed in Version: 0.5.17
- Published:
- Severity<: low
*/

/* For new versions
Functions in base contract should be declared virtual to be overridden &
Functions in derived contracts must be declared with override keyword
*/
