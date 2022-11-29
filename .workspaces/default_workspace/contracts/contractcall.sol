//SPDX-License-Identifier: MIT
pragma solidity^0.5.1; //compiler version
contract one 
{
    mapping(address => uint) public balance;

    function mint() public
    {
        balance[tx.origin]++;
    }
}

contract two
{
    address public token;
    address payable wallet;

    constructor(address _token, address payable _wallet) public
    {
        token = _token;
        wallet = _wallet;
    }

    function buy_token() public payable
    {
        one(token).mint();
        wallet.transfer(msg.value);
    }
}