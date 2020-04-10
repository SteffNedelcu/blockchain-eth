pragma solidity ^0.6.4;
contract Roles {
  address creator;
  mapping(address => mapping(string => bool)) roles;

  constructor () public  {
    creator = msg.sender;
  }
  
  function assignRole (address entity, string memory  role) public hasRole('superadmin')   {
    roles[entity][role] = true;
  }
  
  function unassignRole (address entity, string memory  role) public hasRole('superadmin')   {
    roles[entity][role] = false;
  }
  
  function isAssignedRole (address entity, string memory  role) public returns (bool)   {
    return roles[entity][role];
  }
  
  modifier hasRole (string memory  role) {
    assert(roles[msg.sender][role] || msg.sender == creator);
    _;
  }
}