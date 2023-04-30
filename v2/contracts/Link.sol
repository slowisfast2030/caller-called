// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

import "./Caller.sol";

contract Link {
    function link(address _caller, address _called) public {
        require(_caller != address(0), "Invalid caller address");
        require(_called != address(0), "Invalid called address");
        
        Caller(_caller).setAddress(_called);
    }
}
