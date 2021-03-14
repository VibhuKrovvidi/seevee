pragma solidity ^0.5.0;

import './ERC721Full.sol';

contract Credential is ERC721 {
// State Variables and Data Structures (will be stored on-chain thus will cost Gas)

struct StudentCredentials {
    address studentAddress;
    uint256 startDate;
    uint256 endDate;
    mapping(uint256 => Acad) academics; // map tokenid to Acad instance
    mapping(uint256 => Exp) experiences; // Store id of the NFT
    uint256 Root; // Store id of the NFT
    mapping(address => mapping(uint256 => bool)) approvedViewer; // Org address => TokenID => Bool
}

struct Acad {
    uint256 tokenId,
    modulecode,
    grade
}

struct Exp {
    uint256 tokenID,
    orgname
    startdate
    enddate
    performance
}

ERC721 erc721contract;

// student address => struct containing 2 arrays
mapping(address => StudentCredentials) studentDetails;

// Constructor
constructor(ERC721 ercAddress) public {
    // Instantiation
}

function mintRoot(address student) public universityOnly() {
    // Checks to ensure student is not already registered
    require(studentDetails[student].studentAddress != address(0));

}

function mintAcad() {}

function mintExp() {}

function approveView(tokenid, address of org) studentOnly() {
    // Last elem of struct --> Mapping for student --> address of org --> a boolean for approval


}

function checkApproval() public view returns (bool) {
    // T or F for if approved
}



}