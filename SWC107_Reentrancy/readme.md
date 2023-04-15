### Calling other malicious contract from the main contract, the malicious contract can call the main contract function recurcively to attack it.

## Avoid Re-Entrancy Attack

#### Checks- Effects Interaction Pattern (for avoiding reentrancy attack)
#### Using Mutex with modifier(creating a modifier)

Bool internal locked;
Modifier NoReEntrance(){
require(!locked , “No Re-entrancy allowed”);
locked= true;
_;
Locked = false;
}
