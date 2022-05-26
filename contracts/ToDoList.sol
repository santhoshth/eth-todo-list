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

    event TaskCreated(uint256 id, string content, bool completed);

    event TaskCompleted(uint256 id, bool completed);

    // this wil run once when the app is opened
    constructor() public {
        createTask("Default Task for Testing");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
        emit TaskCreated(taskCount, _content, false);
    }

    function toggleCompleted(uint256 _id) public {
        Task memory _task = tasks[_id];
        _task.completed = !_task.completed;
        tasks[_id] = _task;
        emit TaskCompleted(_id, _task.completed);
    }
}
