//SPDX-License-Identifier: MIT
pragma solidity^0.5.1; //compiler version
contract maping
{
    uint people_count ;
    address owner;
    mapping(uint=>person) public people;

    constructor() public
    {
        people_count = 0;
        owner = msg.sender;
    }

    modifier OnlyOwner
    {
        require(msg.sender == owner );
        _;
    }

    struct person
    {
        string firstname;
        string lastname;
    }

    function add_person(string memory firstname, string memory lastname) public OnlyOwner
    {
        people[people_count] = person(firstname,lastname); 
         increment_count();    

    }

    function increment_count() internal
    {
        people_count = people_count + 1;
    }
}