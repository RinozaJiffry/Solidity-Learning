// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.0;

contract Todo{
    mapping(address=>string[]) public todos;
    
    event TodoAdded(address, string);
    
    function addTodo(string memory todo) public {
        todos[msg.sender].push(todo);
        emit TodoAdded(msg.sender, todo);
    }
    
    function getUserTodos(address user) view public returns(string[] memory) {
        return todos[user];
    }
}
