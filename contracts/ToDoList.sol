// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

contract ToDoList {
    uint256 public taskCount = 0;

    // custom data type
    struct Task {
        uint256 id;
        string content;
        bool completed;
    }

    // storage for all tasks
    // tasks is a collection of task mapped with key value pair i.e id and task
    mapping(uint256 => Task) public tasks;

    // this wil run once when the app is opened
    constructor() public {
        createTask("Default Task for Testing");
    }

    function createTask(string memory content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, content, false);
    }
}
