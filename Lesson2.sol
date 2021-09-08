pragma solidity ^0.5.1;

contract MyContract {
    //Reason for using public keyword - solidity creates own getter function
    string public value = "myValue";
    
    function set(string memory _value) public {
        value = _value;
    }
}
