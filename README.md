## Building with Polygon Bridge 
For this project, you will deploy an NFT collection on the Ethereum blockchain, Map the collection to Polygon, and Transfer assets over via the Polygon Bridge. To put a twist on the project, use an image generation tool - like DALLE 2 or Midjourney - to the images for your NFTs.


## ERC721 CONTRACT 
This project demonstrates how to use the fxPortal contracts to transfer ERC721 tokens from Goerli to Mumbai.The contract is Created from OpenZeppelin's ERC721 contract. The contract allows minting of NFTs and stores metadata URIs for each token.


## Steps for Deploying the Contract

1. Run npm i to install dependencies
2. Put your private key in the .env.examples file and rename to .env.
3. run npx hardhat compile.
4. Run npx hardhat run scripts/deploy.js --network goerli to deploy ERC721 contract.
5. Paste the newly deployed contract address in the tokenAddress variable for the other scripts.
6. Make sure to fill in your public key of metamask wallet
7. Run npx hardhat run scripts/mint.js --network goerli to mint tokens to your wallet.
8. Run npx hardhat run scripts/approveDeposit.js --network goerli to approve and deposit your tokens to polygon.
9. Wait for tokens to show on polygon account.
10. Use polyscan.com to check your account for the tokens. Once they arrive, you can click on the transaction to get the contract address for polygon.
11. Use this polygon contract address for your getBalance script's tokenAddress.
12. Run npx hardhat run scripts/getBalance.js --network mumbai to see the new polygon balance.


## Author 

Nilesh Sharma 

Chris 
