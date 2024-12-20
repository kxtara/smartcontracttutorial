// SPDX-License-Identifier: MIT
pragma solidity 0.6.0;

contract SimpleStorage {

    /* Data Types
    bool: true/false
    int: signed integer (positive/negative)
    uint: unsigned integer (only positive)
    uint256: unsigned integer with a range of 256 bits
    address: holds a 20-byte Ethereum address
    string: string of characters, e.g., "cat"
    */

    /* Visibility Types
    External functions are part of the contract interface, which means they can be called from other contracts 
    and via transactions. An external function f cannot be called internally (i.e., f() does not work, but this.f() 
    works). External functions are sometimes more efficient when they receive large arrays of data, because the 
    data is not copied from calldata to memory.

    Public functions are part of the contract interface and can be either called internally or via messages. 
    For public state variables, an automatic getter function is generated.

    Internal functions and state variables can only be accessed internally 
    (i.e., from within the current contract or contracts deriving from it), without using this.

    Private functions and state variables are only visible to the contract they are defined in and 
    not in derived contracts.
    */

    /* Modifiers
    pure: Disallows modification or access of state. (pure math operations)
    view: Disallows modification of state. (view state variables without changing them)
    */

    uint256 public favoriteNumber; // State variable to store the favorite number
    // initialized -> (uint256 favoriteNumeber) -> ( value = 0, type = internal)

    // Function to store a value in the state variable
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // Function to retrieve the stored value (read-only)
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    // Function to add a number to itself (pure math operation)
    function addNumber(uint256 _number) public pure returns (uint256) {
        return _number + _number;
    }

    // Struct - Are ways to define new types, (like creating new objects)
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People public person = People({favoriteNumber : 5,name :"Kim"});

    // Creating a list
    People[] public people;  // This is a dynamic array
    People[2] public people2;  // This is a fixed array of 2 elements

    // Two ways to store information: Memory or Storage
    // Memory (keyword) - Data will only be store during the execution of the function.
    // Storage (keyword) - Data will persist after the function executes.
    // String (keyword) - Is an array of bytes
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
    }
    

}
