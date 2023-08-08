// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReviewDapp{

    struct Log {
       string  name;
       string message ; 
    }

    address payable public owner;

    Log[] public log;


    function EnterDet (string calldata name, string calldata message) public payable {
        require(msg.value> 0, "min 0 eth to send");
        owner.transfer(msg.value);
        log.push(Log(name, message));

    }

    function getLogs() public view returns (Log[] memory){
    return log;
    }
}

