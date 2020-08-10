pragma solidity 0.5.17;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockSusdToken is ERC20 {
    function mint(address _to, uint _value) public {
        _mint(_to, _value);
    }

    function redeem(address _from, uint _value) public {
        _burn(_from, _value);
    }

    function burnFrom(address account, uint amount) public {
        _burn(account, amount);
    }
}