//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test{

  FundMe public fundMe;

  function setUp() external{
    fundMe = new FundMe();
  }

  function testMinimumDollarIsFive() view public{
    assertEq(fundMe.MINIMUM_USD(), 5e18);             
  }

  function testOwnerIsMsgSender() view public{
    assertEq(fundMe.i_owner(), address(this));
  }

  function testPriceFeedVersionIsAcurrate() view public{
    uint256 version = fundMe.getVersion();
    assertEq(version, 4); 
  }

}


/*Ok in this contract what is hapenning is first we are importing differnt contracts and test,
console from Test contract then did inheritance by doing is so that it can use test contract. 
Then created a fundMe variable then did setup which required for testing and it executes first 
within contract. Creating new contracts for fundMe variable. From FundMe contract which we 
imported then tested whether in the fundMe new contract Minimum USD is 5 tested whether 
sender of the new contract is the owner or not. We added address(this) which tells FundMeTest 
itself is set as the owner inside FundMe */