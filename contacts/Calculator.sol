// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Calculator is Ownable {
    using SafeMath for uint256;

    uint256 public lastResult;

    function add(uint256 a, uint256 b) public onlyOwner {
        lastResult = a.add(b);
    }

    function subtract(uint256 a, uint256 b) public onlyOwner {
        lastResult = a.sub(b);
    }

    function multiply(uint256 a, uint256 b) public onlyOwner {
        lastResult = a.mul(b);
    }

    function divide(uint256 a, uint256 b) public onlyOwner {
        lastResult = a.div(b);
    }
}
