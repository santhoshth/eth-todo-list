const ToDoList = artifacts.require("../contracts/ToDoList.sol");

module.exports = function (deployer) {
  deployer.deploy(ToDoList);
};
