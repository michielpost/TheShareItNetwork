// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

/**
 * Smart Contract that allows sharing of an uri with another address
 */
contract TheShareItNetwork {
    address public owner;
    
    event ShareIt(address sender, address receiver, string appId, string shareType, string data);

    constructor() public {
        owner = msg.sender;
    }

    /**
     * Share data, emit event
     */
    function share(address receiver, string memory appId, string memory shareType, string memory data) public {
        require(bytes(appId).length > 0);
      
        emit ShareIt(msg.sender, receiver, appId, shareType, data);
    }
 
}