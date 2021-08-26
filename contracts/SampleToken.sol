// contracts/SimpleToken.sol
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract SampleToken is ERC20 {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () ERC20("Sample Token", "SIM") {
        _mint(msg.sender, 1000000 * (10 ** uint256(decimals())));
    }
}


