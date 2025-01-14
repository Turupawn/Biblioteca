// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "../ERC20/BalancerV2FeeToken.sol";

contract MyBalancerFeeToken is BalancerV2FeeToken
{
    constructor() BalancerV2FeeToken(
        "My Token", "MTKN",     // Name and Symbol
        1_000_000_000 ether,    // 1 billion supply
        address(this),          // Vault Address
        100, 200, 0)            // Fees: 2% buy 1% sell 0% P2P
    {
    }
}