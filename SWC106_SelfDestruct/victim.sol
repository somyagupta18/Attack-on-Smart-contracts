pragma solidity ^0.7.0;

contract Suicide {
    uint256 private walletCount = 0;

    constructor(){
        walletCount = 0;
    }

    function addWallet() public returns (uint256)  {
        walletCount+=1;
        return walletCount;
    }

    function checkEmpty() public returns (bool) {
        if (walletCount == 0) {
            return true;
        }

        selfdestruct(msg.sender);
    }
}
