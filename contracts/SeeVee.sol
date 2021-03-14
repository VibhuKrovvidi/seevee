pragma solidity ^0.5.0;

contract SeeVee {
    mapping(address => bool) organisations;
    mapping(uint256 => uint256) jobListings; // unique jobID to database 
    mapping(address => mapping(uint256 => bool)) jobApplications; // checks if a student has applied for a specific job


    uint256 jobs; // Used for the unique job num

    function checkOrganisation(address org) {}

    function enrol(address) universityOnly() {
        // calls credential
        /*
            1. mint acad token after creating a new StudentCredential struct instance
        */
    }

    function keyGrades(address student, module code, grade) {} // Refer to Credential Acad struct

    function keyExperience() {} // Refer to credential exp struct

    function listJob(uint256 uniqueJobNumber) {} // This maps to an off-chain db which stores job info

    function applyJob(uint256 uniqueJobNumber) studentOnly() {
        // student shouldn't be able to reapply for job?
    } 

    function requestCredential(uint256 tokenId, address student) approvedOrgOnly() {
        // First check if student actually applied for job

    }

    function approveOrg() studentOnly() {
        // Access the credential
        // On UI can select from your tokens (metamask)
        // Take a log of all tokenids that were approved (off-chain)
    }

    function viewCredential(address student) {} // Returns all tokens that org is approved for.


}