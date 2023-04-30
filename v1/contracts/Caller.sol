// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

contract Caller {
    address private calledAddress;

    constructor(address _calledAddress) public {
        calledAddress = _calledAddress;
    }

    function makeCall(uint _num) public payable {
        (bool success, ) = calledAddress.call.value(msg.value)(abi.encodeWithSignature("setVars(uint256)", _num));
        require(success, "Failed to send Ether");
    }
}