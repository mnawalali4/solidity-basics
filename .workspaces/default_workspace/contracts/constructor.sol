pragma solidity^0.8.7;

contract mycontract
{
    string value;

    constructor() public
    {
        value = "test value";
    }


    function get() public view returns(string memory)
    {
        return value;
    }

    function set(string memory set_value) public 
    {
        value = set_value;
    }    

}