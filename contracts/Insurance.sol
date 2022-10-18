// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/utils/Strings.sol";

contract Insurance {
    struct Claim {
        address sender;
        int amount;
        address receiver;
    }

    mapping(address => bool) registeredUsers;

    event RegistrationSuccess(address farmer, string message);
    event ExistingUser(address farmer);

    function registerUser() public {
        if (registeredUsers[msg.sender] == true) {
            emit ExistingUser(msg.sender);
        } else {
            registeredUsers[msg.sender] = true;
            emit RegistrationSuccess(
                msg.sender,
                string.concat(
                    Strings.toHexString(msg.sender),
                    " registered successfully!"
                )
            );
        }
    }
}
