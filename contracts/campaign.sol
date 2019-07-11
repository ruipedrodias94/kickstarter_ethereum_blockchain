pragma solidity^0.5.1;

contract Campaign {
    
    address public manager;
    uint public minimumContribuition;
    address[] public approvers;
    
    /**
     * @dev Constructor method, initializes the campaign
     * @param _minimum Minimum contribuition to the campaign
     */
    constructor (uint _minimum) public{
        manager = msg.sender;
        minimumContribuition = _minimum;
    }
    
    function contribute() public payable {
        require(msg.value > minimumContribuition);
        approvers.push(msg.sender);
    }
}