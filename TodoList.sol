// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract TodoList {

    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function createTodo(string calldata _text) external {
        todos.push(
            Todo({
                text: _text,
                completed: false
            })   
        );
    }

    function updateTodo(uint _index, string calldata _text) external {
        todos[_index].text = _text;
    }

    function toggleCompleted(uint _index) external {
        todos[_index].completed = !todos[_index].completed;
    }

    function getTodo(uint _index) external view returns(string memory, bool){
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    } 
}