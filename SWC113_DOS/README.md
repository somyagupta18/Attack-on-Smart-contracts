// Once the attacker contract without a fallback function claims the ownership of kingdom then noone will be able to claim back the ownership because the attcker contract is unable to receive money
// To avoid this we must take a pull approack rather then push
// Let the external account pull the ether rather then pushing it inside a function to avoid DOS
