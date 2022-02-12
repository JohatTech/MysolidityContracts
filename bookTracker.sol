/// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract bookTracker{
    struct Book{
        uint256 price;
        string name;
        string author;
    }

    mapping (uint256 => Book) bookShell; 

    function addBook(uint256 _id, uint256 _price, string memory _name, string memory _author) public{
        bookShell[_id] = Book(_name, _author);
    }

    function buyBook(string memory _name)public payable {

    } 
    function sellBook()public {

    }

}