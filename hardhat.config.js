
require( "@nomiclabs/hardhat-waffle");

const ALCHEMY_API_KEY ="cCwisqn1jyqNHAt206Xlgh9N2cnEqvyq";
const GOERLI_PRIVATE_KEY= "ba88a2e13e43b8787a890c506afaecebb344081f5984f4692bbc357d10ae1e59";


/** @type import('hardhat/config').HardhatUserConfig */


module.exports = {
  solidity: "0.8.9",
  networks: {
    goerli: {
      url: `https://eth-goerli.alchemyapi.io/v2/${ALCHEMY_API_KEY}`,
      accounts: [GOERLI_PRIVATE_KEY]
    }
  }
};
