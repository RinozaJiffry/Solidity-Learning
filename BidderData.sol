pragma solidity ^0.4.0;

contract Bidder {
    string public name = "Buffalo";
    uint public bidAmount = 20000;
    bool public eligible;
    uint constant minBid = 1000;
    
    function setName (string _name) public {
        name = _name;
    }
    
    function setBidAmount (uint x) public {
        bidAmount = x;
    }
    
    function determineElegibility() public {
        if(bidAmount >= minBid) eligible = true;
        else eligible = false;
    }
}
