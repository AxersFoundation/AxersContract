pragma solidity 0.4.19;

import "./ERC20/MintableToken.sol";

contract AxersToken is MintableToken {

  string public name = "Axers";
  string public symbol = "Axers";
  uint8 public decimals = 18;
  function AxersToken(uint256 _reserved) public {
    mint(msg.sender, _reserved);
  }
}
