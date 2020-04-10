pragma solidity ^0.6.4;
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
  
  function assignRole (address entity, string memory role) public hasRole('superadmin')   {
    roles[entity][role] = true;
  }
  
  function unassignRole (address entity, string memory role) public hasRole('superadmin')   {
    roles[entity][role] = false;
  }
  
  function isAssignedRole (address entity, string memory role) public returns (bool)   {
    return roles[entity][role];
  }
  
  modifier hasRole (string memory role) {
    assert(roles[msg.sender][role] || msg.sender == creator);
    _;
  }
}
contract Presciption is Owned {
    address pacient;
    Roles roles;
    enum State { Created, Locked, Done }
    State public state;
    
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
    
    mapping (uint => Drug) drugs;
    
    constructor(address rolesAddress, address _pacient) public {
        roles = Roles(rolesAddress); 
        state = State.Created;
        pacient = _pacient;
    }
    
    function newDrug(string calldata _code, uint _quantity) external onlyOwner returns(uint) {
        uint drugID = numDrugs++;
        drugs[drugID] = Drug(_code, _quantity);
    }
    function getDrugsNo() public view returns(uint){
        return numDrugs;
    }    
    function getDrug(uint _drugID) public view returns(string memory, uint){
        return (drugs[_drugID].code,drugs[_drugID].quantity );
    }
    function closePrescription() public {
        state = State.Done;
    }
    
      
}