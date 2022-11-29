//SPDX-License-Identifier: MIT
pragma solidity^0.5.1; //compiler version
contract tansfer
{
    address payable wallet;
    mapping(address=>uint256) public balance;

    event Purchase(address indexed buyer, uint256 amount);

    constructor (address payable _wallet) public
    {
        wallet = _wallet;
    }

    function buy_token() public payable
    {
        balance[msg.sender] +=1;
        wallet.transfer(msg.value);
        emit Purchase(msg.sender,1);
    }


}