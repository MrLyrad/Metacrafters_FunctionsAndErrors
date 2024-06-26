
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ErrHandle {
    // declaring the initial value of the token supply and the subtraction counter
    uint private tokenSupply = 0;
    uint private subCounter = 2;

    function addTokens(uint _i) public {
        // the assert function here ensures that the input is not more than 1000
        assert(_i < 1000);    

        // this require error handling statement requires the input to be divisible by 5 but not equal to 0
        require(_i % 5 == 0, "Input must be divisible by 5!");
        tokenSupply += _i;
    }

    function subTokens(uint _i) public {
        // the assert function here ensures that the input is not more than 1000
        assert(_i < 1000);

        // this require error handling statement requires the input to be divisible by 5 but not equal to 0
        require(_i % 5 == 0 && _i != 0, "Input must be divisible by 5!");
        tokenSupply -= _i;
        subCounter -= 1;

        if(subCounter < 0) {
            revert("Subtraction Limit Reached!");
        }
    }

    function showTokens () external view returns(uint) {
        return tokenSupply;
    }

    function numSub () external view returns(uint) {
        return subCounter;
    }

}
