// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

/**
 * Smart Contract that allows sharing of an uri with another address
 */
contract TheShareItNetwork {
    //variables
    //storing actionFee amount needed for the event
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    /**
     * Share data to index
     */
    function share(address receiver, string memory appId, string memory shareType, string memory data) public {
        require(bytes(appId).length > 0);

        //Call does nothing, but all input data will be index by The Graph
    }
 
}