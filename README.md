# SportsAchievementToken

# Overview:
SportsAchievementToken (SPRT) is an ERC20 token designed to reward users for their sports achievements. Users can log their activities, earn tokens based on their performance, and redeem these tokens for various services.

# Description:
SportsAchievementToken (SPRT) is a smart contract built on the Ethereum blockchain using the ERC20 standard. By giving users tokens according to performance criteria like age, broken records, and training hours, this token encourages users to participate in sports. In addition to keeping track of their progress and activities, users can exchange earned tokens for services. Furthermore supported by the contract are user-to-user token transfers. Tokens are automatically generated by the contract when users complete specific tasks milestones. It also maintains records of these actions and the tokens obtained. Tokens can be used by users to obtain services. Functions to verify recorded activities, trade tokens for services, and record new sports-related activities are all included in the contract.

# Features:
a. Earn Tokens: Users can earn tokens based on their sports activities.
b. Redeem Tokens: Tokens can be redeemed for services.
c. Transfer Tokens: Tokens can be transferred between users.
d. Activity Logging: Users can log their sports activities, which are stored on-chain.

# Key Details:
1. Token Name: SportsAchievementToken
2. Initial Supply: 1,000,000 tokens created and given to the contract deployer.
3. Token Symbol: SPRT

# Getting Started:

How it works:
1. Logging Sports Activities:

   Function: logSportsActivity(uint recordsBroken, uint trainingHours)

   Users can log their sports activities. If they make more than 0 records broken, they earn 100 tokens. If they take more than or equals to 50 traing hours, they earn 200 tokens.

2. Redeeming Tokens:

   Function: redeemTokens(uint amount, string memory service)

   Users can redeem their tokens for services. The specified amount of tokens is burned from their balance.

3. Transferring Tokens:

   Function: transferTo(address to, uint amount)

   Users can transfer tokens to another address.

4. Viewing Logged Activities Function: getUserSportsActivities(address user)

   Users can see the sports activities they or others have logged.

#Executing Program:
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

```solidity

```

Testing:
Compile the code to ensure it works correctly and simulate transactions to verify functionality.

Conclusion:
SportsAchievementToken (SPRT), a blockchain-based token, offers a unique and exciting way to motivate sports enthusiasts by encouraging their achievements. It uses the ERC20 standard to ensure secure, clear, and decentralised reward administration. Whatever your goals are, SportsAchievementToken provides a complete solution for tracking sporting achievements and awards. It can be used to monitor your development, earn prizes, and exchange tokens for goods and services.

Author:
Bhavya Chhabra

License:
This"SportsAchievementToken" is licensed under the Mit license.
