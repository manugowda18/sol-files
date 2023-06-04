// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract Structure{
    struct Todo{
        string text;
        bool completed;
    }

    //An array of 'TODO' Structs
    Todo[] public todos;

    function create(string calldata _text) public {
        // 3 ways to inialize a struct
       
        //by calling it like a function
        todos.push(Todo(_text,false));

        // // by key value mapping
        // todos.push(Todo({text: _text,completed: false}));

        // //by  inizalizing a empty struct
        // Todo memory todo;
        // todo.text=_text;
        // todo.completed = false;

        // todos.push(todo);

    }
    //solidity automatically upadting the todos
    //getter function and we dont need this functon
    function get(uint _index) public view returns(string memory text , bool completed){
        Todo storage todo = todos[_index];
        return(todo.text,todo.completed);
    }
    //update the todo
    function updateText(uint _index,string calldata _text) public{
        Todo storage todo = todos[_index];
        todo.text = _text;
    }
    //upadte completed
    function CompletedBol(uint _index) public{
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }

}