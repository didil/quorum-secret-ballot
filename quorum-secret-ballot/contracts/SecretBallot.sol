pragma solidity ^0.4.15;

contract SecretBallot {

  /*
   * Storage
   */

  // votes per company
  mapping(address => uint) private votes;

  // totals per option
  mapping(uint => uint) private totals;

  // company A Address
  address companyA;
  // company B Address
  address companyB;
  // company C Address
  address companyC;

  /**
  * @dev Contract constructor
  */
  function SecretBallot(address _companyA, address _companyB, address _companyC){
    companyA = _companyA;
    companyB = _companyB;
    companyC = _companyC;
  }

  /*
   * Public functions
   */

  /**
  * @dev Register vote and update totals
  * @param _option Voting option
  */
  function vote(uint _option) public {
    // Only allow the registered companies to vote
    require(msg.sender == companyA || msg.sender == companyB || msg.sender == companyC);
    // Only allow voting once
    require(votes[msg.sender] == 0);
    // Only allow 1 or 2 as options
    require(_option == 1 || _option == 2);

    // save vote
    votes[msg.sender] = _option;

    // update totals
    totals[_option] = totals[_option] + 1;
  }

  /**
  * @dev Get total votes for option
  * @param _option Voting option
  */
  function getTotalVotes(uint _option) constant public returns (uint total) {
    return totals[_option];
  }

}
