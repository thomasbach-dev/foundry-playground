// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/NFT.sol";

contract NFTTest is Test {
    NFT public nft;

    function setUp() public {
        nft = new NFT("foo", "bar");
    }

    function testTokenURIOn0() public {
        assertEq('0', nft.tokenURI(0));
    }
}
