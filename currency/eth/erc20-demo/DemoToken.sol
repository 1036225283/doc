pragma solidity >=0.4.21 <0.6.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract DemoToken is ERC20, ERC20Detailed {
    uint256 public constant INITIAL_SUPPLY = 1000000000000000000;

constructor () public ERC20Detailed("Demo Coin", "demo", 8) {
_mint(msg.sender, INITIAL_SUPPLY);
}
}