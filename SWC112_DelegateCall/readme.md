delegatecall is a low level function similar to call.
When contract A executes delegatecall to contract B, B's code is executed
with contract A's storage, msg.sender and msg.value.
Two things to note when using the delegatecall function.
A calling B => use code and functions of B with A’s storage variables
It will preserve the context (storage, caller, etc…)
The layout of the storage variables(declared state variables) must be the same for the contract calling delegatecall and the contract getting called.
