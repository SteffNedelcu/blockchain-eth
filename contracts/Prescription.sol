pragma solidity ^0.4.18;
contract Owned {
    address public owner;    
    constructor() public {
        owner = msg.sender;
    }
    modifier onlyOwner() {
        assert(msg.sender == owner);
        _;
    }    
    function transferOwnership(address newOwner) external onlyOwner {
        if (newOwner != address(0)) {
            owner = newOwner;
        }
    }
}
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
contract Presciption is Owned{
    address pacient;
    Roles roles;
    enum State { Created, Locked, Done }
    State public state;
    
    constructor(address rolesAddress, address _pacient) public {
        roles = Roles(rolesAddress); 
        state = State.Created;
        pacient = _pacient;
    }
    
    
    struct Drug {
        string code;
        uint quantity;
    }
    uint numDrugs;
    
     modifier inState(State _state) {
        require(
            state == _state,
            "Invalid state."
        );
        _;
    }
    
    modifier isMedic(){
         assert(roles.isAssignedRole(msg.sender,"medic"));
         _;
    }
    modifier isFarmacist(){
         assert(roles.isAssignedRole(msg.sender,"farmacist"));
         _;
    }
    mapping (uint => Drug) drugs;
    

    function newDrug(string _code, uint _quantity) external onlyOwner returns(uint) {
        uint drugID = numDrugs++;
        drugs[drugID] = Drug(_code, _quantity);
    }
    function getDrugsNo() public view returns(uint){
        return numDrugs;
    }    
    function getDrug(uint _drugID) public view returns(string memory, uint){
        return (drugs[_drugID].code,drugs[_drugID].quantity );
    }
    function sendPrescription() public isMedic{
       
        state = State.Locked;
    }
    function closePrescription() public isFarmacist{
        state = State.Done;
    }
    function getUserRole() public view returns(bool){
        return roles.isAssignedRole(msg.sender,"medic");
    }
}
