//SPDX-License-Identifier: MIT
pragma solidity^0.5.1;
contract maping
{
    uint people_count;
    mapping(uint=>person) public people;

    constructor() public
    {
        people_count = 0;
    }

    struct person
    {
        string firstname;
        string lastname;
    }

    function add_person(string memory firstname, string memory lastname) public
    {
        people[people_count] = person(firstname,lastname);
       people_count +=1;
    }
}