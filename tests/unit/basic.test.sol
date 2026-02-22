// SYNTAX TEST "source.solidity" "basic grammar coverage"

pragma solidity ^0.8.20;
// <------ keyword.control.pragma.solidity

contract Foo {}
// <------- storage.type.contract.solidity
//       ^^^ entity.name.type.contract.solidity

abstract contract Bar {}
// <-------- storage.modifier.abstract.solidity

error NotAuthorized();
// <----- storage.type.error.solidity
//    ^^^^^^^^^^^^^ entity.name.type.error.solidity

type UserId is uint256;
// <---- storage.type.user-defined-value-type.solidity
//   ^^^^^^ entity.name.type.user-defined-value-type.solidity
//          ^^ keyword.control.user-defined-value-type.solidity

receive() external payable {}
// <------- storage.type.function.solidity

fallback() external {}
// <-------- storage.type.function.solidity

unchecked { }
// <--------- keyword.control.solidity

++i;
// <-- keyword.operator.unary.solidity

x += 1;
// <~~-- keyword.operator.assignment.solidity

y <<= 1;
// <~~--- keyword.operator.assignment.solidity

z >>= 1;
// <~~--- keyword.operator.assignment.solidity

