pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Kronos is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Kronos(address _owner)  UpgradeableToken(_owner) {
    name = "Kronos";
    symbol = "KRN";
    totalSupply = 100000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}