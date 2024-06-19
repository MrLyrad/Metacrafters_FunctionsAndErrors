# Smart Contract Project - Functions and Errors - ETH + AVAX

In this project, we are tasked to utilize the following error handling functions: `require()`, `assert()`, and  `revert()`. The Solidity contract named `mySmartContract.sol` has the necessary Solidity code that enables the checking of various `uint`.

## Description

For this project, I decided to create a simple Smart Contract that lets users control a supply of tokens. The error handling comes in handy when validating the user input, ensuring that the code does not break while executing and that gas is not completely wasted.

## Overview

The following error handling functions found in `mySmartContract.sol` were defined as follows:

*1. requireErrHandle(uint _i)* - This function ensures that the user input is a number divisible by 5.

*2. assertErrHandle(uint _i)* - This function ensures that the initial number of tokens is more than 0.

*3. revertErrHandle(uint _i)* - This function ensures that the user input is not a negative number.

### Running the Contract in Remix IDE.

* Open [Remix IDE](https://remix.ethereum.org/).
* Inside Remix IDE, create a new file and paste the contents of `mySmartContract.sol` or upload the file itself to the IDE.
* Ensure that the compiler version is set to `0.8.18`.
* Hit `Ctrl` + `S` on your keyboard to compile the smart contract.
* Deploy the compiled contract by navigating to the sidebar of the IDE and then click `Deploy`.
* To interact with the variables, drop down the `Deployed Contracts` menu and place your input in the respective bins.

## Authors

Daryl Juacalla
[@MrLyrad](https://github.com/MrLyrad)


## License

This project is licensed under the MIT License.
