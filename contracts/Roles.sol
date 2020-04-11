pragma solidity ^0.6.4;
contract Roles {
  address creator;
  mapping(address => mapping(string => bool)) roles;

  constructor () public  {
    creator = msg.sender;
  }
  
  function assignRole (address entity, string memory role) hasRole('superadmin') public  {
    roles[entity][role] = true;
  }
  
  function unassignRole (address entity, string memory role) hasRole('superadmin') public  {
    roles[entity][role] = false;
  }
  
  function isAssignedRole (address entity, string memory role) public view returns (bool)   {
    return roles[entity][role];
  }
  function fcnHasRole(string memory _role) public view returns(bool){
      if(roles[msg.sender][_role]){
          return true;
      }else{
          return false;
      }
  }
  function checkRole(string memory _role) public view returns(string memory){
      if(roles[msg.sender][_role]){
          return "DA";
      }else{
          return "NU";
      }
  }
  modifier hasRole (string memory role) {
    assert(roles[msg.sender][role] || msg.sender == creator);
    _;
  }
}