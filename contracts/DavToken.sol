// contracts/DavToken.sol
// SPDX-License-Identifier: MIT

pragma solidity >=0.4.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DavToken is ERC20 {

  constructor() ERC20("Dav Token", "DVT") {
    _mint(msg.sender, 100000 * (10 ** uint256(decimals())));
  }

}