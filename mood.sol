// Notes + Smart Contract that is deployed on Ropsten Testnet

// SPDX-License-Identifier: MIIT

pragma solidity ^0.8.4; // ^ means this version and anything higher than this version

contract MoodDapp {

    string mood; // creates string variable called mood

    // Function that will set the mood string
    // function to set function
    // setMood is the name on the function
    // inside the () string is the inputs 
    // public means that anyone can call this function and it's included in the ABI
    // We need to use 'memory' to tell our contract the string is arbitrary length so we  
    function setMood( string memory _mood) public {
        mood = _mood;
    }

    // Function that will get the mood string
    // 'view' keyword is for functions that don't change the state of the contract.
    // after returns we use () to stats the type we are returning
    function getMood() public view returns (string memory) {
        return mood;
    }
 
}

// Application Binary Interface
// Express your contract in a smaller compact way
// Doesnt need logic just needs function definition
// When external parties call the functions it needs to know how to call them
// This is why it only includes the 'public' functions

// Anything that doesnt have a public keyword is private