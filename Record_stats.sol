// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReviewDapp{

    struct Log {
       string  name;
       string message ; 
    }

    address owner = payable(msg.sender);

    Log[] public log;

    function EnterDetails(string memory _name, string memory _message) payable public {
        require(msg.value >0, "minimum amount should be more than 0");
        transfer.owner[msg.value];
        log.push(Log(_name, _message));
    }

    function getLogs() public view returns (Log[] memory){
    return log;
    }
}

