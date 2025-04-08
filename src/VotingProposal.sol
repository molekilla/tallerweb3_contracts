// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./Proposal.sol";
// This contract is used to manage voting proposals
contract VotingProposal {
    uint256 public count;
    Proposal[] public proposals;

    function createProposal(string memory title, string memory description) public {
        count++;
        proposals.push(Proposal(count, title, description));        
    }

    function getProposal(uint256 id) public view {
        // Check if the proposal exists
        require(id > 0 && id <= count, "Proposal does not exist");
        proposals[id];
    }

    function getAllProposals() public view returns (Proposal[] memory) {
        return proposals;
    }
}
