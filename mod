pragma solidity ^0.8.0;

contract AdminOnlyContract {
    address private admin;

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only the admin can call this function.");
        _;
    }

    function adminFunction() public view onlyAdmin returns (string memory) {
        return "This function can only be called by the admin.";
    }

    function publicFunction() public view returns (string memory) {
        return "This function can be called by anyone.";
    }
}
