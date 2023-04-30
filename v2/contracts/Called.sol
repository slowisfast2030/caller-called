// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

contract Called {
    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) public payable {
        num = _num;
        sender = msg.sender;
        value = msg.value;
    }
}
