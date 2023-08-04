require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  networks: {
    mumbai: {
      url: 'https://rpc-mumbai.maticvigil.com',
      accounts: ["ee7e6a74934dc26de71a1cc6cff46c36cdf647128b68adf69497b668bebb11b0"],
    },
    goerli: {
      url: 'https://ethereum-goerli.publicnode.com',
      accounts: ["ee7e6a74934dc26de71a1cc6cff46c36cdf647128b68adf69497b668bebb11b0"],
    },
  }
};
