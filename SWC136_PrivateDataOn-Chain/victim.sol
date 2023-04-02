pragma solidity ^0.8.0;

contract Victim {
    address public owner;
    string private secret;
    string private text;

    constructor() {
        owner = msg.sender;
        secret = "abc"; // storing unencrypted private data on-chain
    }

    function declareVar() private {
            text = "123";
    }
}
