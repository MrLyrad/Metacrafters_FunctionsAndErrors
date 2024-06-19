// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract ErrHandle {
    // declaring the initial value of the token supply
    uint private  tokenSupply = 0;

    // this require error handling statement requires the input to be divisible by 5
    function requireErrHandle(uint _i) public {
        require(_i % 5 == 0, "Input must be divisible by 5!");
        tokenSupply += _i;
    }

    // this revert error handling statement reverts back any gas used if the input is zero or a negative number
    function revertErrHandle(uint _i) public {
        if(_i == 0) {
            revert("Input must not be zero!");
        }
        tokenSupply -= _i;
    }

    // this assert error handling statement checks if the input is 1, meaning yes/confirm
    function assertErrHandle(uint _i) external view returns(uint){
        assert(_i == 1);
        return tokenSupply;
    }

}
