// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

/**
 * Smart Contract that allows sharing of an uri with another address
 */
contract TheShareItNetwork {
    //variables
    //storing actionFee amount needed for the event
    address public owner;
    
    struct Share{
        address sender;
        address receiver;
        string appId;
        string shareType;
        string data;
    }
    
    Share[] public shares;
    
    event ShareIt(uint id, address sender, address receiver, string appId, string shareType, string data);

    constructor() public {
        owner = msg.sender;
    }

    /**
     * Share data, emit event
     */
    function share(address receiver, string memory appId, string memory shareType, string memory data) public {
        require(bytes(appId).length > 0);
      
        shares.push(Share(msg.sender, receiver, appId, shareType, data));
        uint id = shares.length - 1;
      
        emit ShareIt(id, msg.sender, receiver, appId, shareType, data);
    }
 
}