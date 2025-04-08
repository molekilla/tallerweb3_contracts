// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {VotingProposal} from "../src/VotingProposal.sol";

contract VotingProposalTest is Test {
    VotingProposal public votingProposal;

    function setUp() public {
        votingProposal = new VotingProposal();
    }

    function test_Create() public {
        votingProposal.createProposal("Proposal 1", "Description 1");
        assertEq(votingProposal.count(), 1);
    }
}
