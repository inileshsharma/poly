const hre = require("hardhat");
const tokenContractJSON = require("../artifacts/contracts/MetaToken.sol/MetaToken.json");
require('dotenv').config()

const tokenAddress = process.env.TARGET_ADDRESS;
const tokenABI = tokenContractJSON.abi;
async function main() {

    const token = await hre.ethers.getContractAt(tokenABI, tokenAddress);
    console.log("Prompt:")
    for (let i = 0; i < 5; i++) {
        const desc =await token.promptDescription(i)
        console.log("NFT "+ i+  ": " + desc );
      }
    
  }

  // We recommend this pattern to be able to use async/await everywhere
  // and properly handle errors.
  main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });