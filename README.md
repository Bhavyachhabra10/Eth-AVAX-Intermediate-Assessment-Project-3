SportsAchievementToken

Token Supply:
This contract creates a digital token called SPRT that rewards users for their sports achievements. Users can earn tokens by recording their activities like breaking records or spending time training.

Description:
This code creates a system where people earn digital tokens (like points) for sports activities such as records broken and training hours. Users can log their sports activities, records broken and training hours, and earn tokens based on these actions. The contract automatically generates tokens as users achieve milestones in their activities. It also keeps a record of these activities and the tokens earned. Users can use their tokens to get services. The contract provides functions to check logged activities, exchange tokens for services, and log new sports-related activities.

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

4. Viewing Logged Activities Function: getUserActivities(address user)

   Users can see the sports activities they or others have logged.

Getting Started:
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

a. Go to Remix IDE online.
b. create a new file by clicking on the "+" icon in the left-hand sidebar
c. Use version ^0.8.0. and import ERC20 from openzeppelin . Deploy the SportsAchievementToken contract .
d. Firstly call sports activity with paramters like age, records broken, training hours to record activities
e. Use reedem tokens to burn tokens . after this call transfer token to another address using trasfer to .
f. After this step call the logged activity function to get user activities.
g. Then, check transaction details.
h. Save the file with a .sol extension.

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.0" (or another compatible version), and then click on the "Compile SportsAchievementToken.sol" button.Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Once the contract is deployed, you can interact with it.

Testing:
Compile the code to ensure it works correctly and simulate transactions to verify functionality.

Author:
Bhavya Chhabra

License:
This"SportsAchievementToken" is licensed under the Mit license.
