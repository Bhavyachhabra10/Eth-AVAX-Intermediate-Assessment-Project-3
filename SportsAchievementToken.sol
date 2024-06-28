// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract SportsAchievementToken is ERC20 {
    mapping(address => SportsActivity[]) private userActivities;
    struct SportsActivity {
        uint age;
        uint recordsBroken;
        uint trainingHours;
    }

    event TokensEarned(address indexed user, uint amount);
    event TokensRedeemed(address indexed user, uint amount, string service);

    constructor() ERC20("SportsAchievementToken", "SPRT") {
        _mint(msg.sender, 1000000 * 10 ** decimals()); // Mint initial tokens to contract deployer
    }

    function logSportsActivity(uint age, uint recordsBroken, uint trainingHours) external {
        require(age > 0 || recordsBroken > 0 || trainingHours > 0, "Record at least one activity to proceed");

        // Calculate tokens earned based on activities
        uint tokensEarned = 0;

        if (recordsBroken > 0) {
            tokensEarned += recordsBroken * 100; // Example: 100 tokens per record broken
        }
        if (trainingHours >= 50) {
            tokensEarned += 200; // Example: Additional 200 tokens for training 50+ hours
        }

        require(tokensEarned > 0, "No activities meet the criteria for earning tokens");

        _mint(msg.sender, tokensEarned);
        emit TokensEarned(msg.sender, tokensEarned);

        // Record the activity
        userActivities[msg.sender].push(SportsActivity({
            age: age,
            recordsBroken: recordsBroken,
            trainingHours: trainingHours
        }));
    }

    function redeemTokens(uint amount, string memory service) external {
        require(balanceOf(msg.sender) >= amount, "Low balance");
        _burn(msg.sender, amount);
        emit TokensRedeemed(msg.sender, amount, service);
    }

    function getUserSportsActivities(address user) external view returns (SportsActivity[] memory) {
        return userActivities[user];
    }

    function transferTo(address to, uint amount) public {
        transfer(to, amount);
    }
}
