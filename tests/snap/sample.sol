pragma solidity ^0.8.20;

type UserId is uint256;

error NotAuthorized(address caller);

contract Example {
    UserId private _id;

    constructor(UserId id) {
        _id = id;
    }

    receive() external payable {}
    fallback() external {}

    function inc(uint256 x) external pure returns (uint256) {
        unchecked {
            x += 1;
        }
        return x;
    }
}

