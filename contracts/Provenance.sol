pragma solidity ^0.5.0;

//Contracts are equivalent to classes
contract Provenance {
    //Private variable hash array of type bytes32
    bytes32[] public messageArray;
    //Pass in a message and hash
    function hashMessage(string memory message)
    private
    pure
    returns (bytes32)
    {
        return sha256(abi.encodePacked(message));
    }
    //Store hashed message
    function storeMessage(string calldata message)
    external
    {
        bytes32 hashedMessage = hashMessage(message);
        messageArray.push(hashedMessage);
    }
    //Check a new message to see if contained in hashedMessage array
    function newMessage(string memory message)
    public
    view
    returns(bool)
    {
        bytes32 newHashedMessage = hashMessage(message);
        for(uint256 i = 0; i < messageArray.length; i++){
            if(messageArray[i] == newHashedMessage){
                return true;
            }
        }
        return false;
    }
}

//Notes
/*
Apparently iterations are expensive/ not good in solidity, so consider changing the array to a mapping
*/