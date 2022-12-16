//SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

import"https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20{
   


    constructor(string memory _name, string memory _symbol)ERC20(_name,_symbol){
        // The ERC20(",") this is to call the constructor from ERC20


        _mint(msg.sender,1000*(10**18));

    }

    function mint(address _account, uint256 _amount)public{
        uint256  amount = _amount *(10**18);
_mint(_account,amount );

    }
    
}
