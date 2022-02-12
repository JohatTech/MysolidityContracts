// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract SimpleStorage {
    struct Player{
        uint256 score;
        string namePlayer;
    }

    Player public player;

    mapping(string=>uint256) public nametoScore;

    mapping(address => uint256) public bettingToaddress;

    function addPlayer(string memory _namePlayer, uint256 _score)public {
        nametoScore[_namePlayer] =  _score; 
    }
    function bettingPool() public payable {
        bettingToaddress[msg.sender] = msg.value; 
    }
    function returnWiner() public view returns(uint256){
        
    }

}