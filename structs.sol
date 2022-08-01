//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract myStruct{
    //1. declare struct

    struct User{
         address addr;
         uint score;
         string name;
    } 

    User[] users;
    mapping(address=>User) UserList;

    function instance(string calldata _name) public {
        User memory user1 = User(msg.sender, 2, _name);
        User memory user2 = User(msg.sender, 3, _name);
        User memory user3 = User({name:_name, addr: msg.sender,score:90});

        user3.addr;
        user3.score = 20;
        //delete user1;
        //delete user2;

        users.push(user1);
        users.push(user2);

        UserList[msg.sender] = User(msg.sender, 2, _name);

  


    }

}
