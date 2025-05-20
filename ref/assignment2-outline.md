# Assignment 2
Smart Contract Development with *Truffle & Ganache*.

> Deadline for report: 27.04.2025

Objectives
- Learn how to set up a local Ethereum blockchain using Ganache.
- Write and deploy a Solidity smart contract using Truffle Suite.
- Interact with the deployed contract using Truffle Console & MetaMask.
- Understand gas fees, transactions, and local blockchain testing.

## 1 Project setup and requirements.

### 1.1 Install Required Tools

Ensure you have the following installed:
- Node.js & npm: Download here: https://nodejs.org/en
- Ganache (for local Ethereum blockchain): https://archive.trufflesuite.com/ganache/
- Truffle Suite (for compiling and deploying smart contracts): `npm install -g truffle`
- MetaMask Wallet (for interacting with smart contracts): https://metamask.io/

### 1.2 Project steps

1. Initialize Truffle Project
  - Open a terminal and create a new Truffle project:
    ```sh
    mkdir VotingDApp
    cd VotingDApp
    truffle init
    ```
  - This initializes a Truffle project with the following folders:
    - `contracts/`: Contains Solidity smart contracts.
    - `migrations/`: Handles smart contract deployments.
    - `test/`: For testing contracts.
    - `truffle-config.js`: Configuration file.
2. Start a Local Blockchain with Ganache
  - Open Ganache and click Quickstart Ethereum to start a local blockchain.
  - Note the RPC Server URL (e.g., `http://127.0.0.1:7545`).
  - Import one of Ganache’s accounts into MetaMask using the private key.
3. Write the Solidity Smart Contract
  - Inside the `contracts/` folder, create a new file `Voting.sol`:

  ```solidity
  // SPDX - License - Identifier : MIT
  pragma solidity ^0.8.19;
  contract Voting {
    address public immutable
    mapping ( bytes32 = > uint )
    mapping ( address = > bool )
    mapping ( bytes32 = > bool )

    owner ;
    public votes ;
    public hasVoted ;
    private validCandidates ;

    constructor () {
      owner = msg . sender ;
    }
    function initializeCandidates ( bytes32 [] memory
    _candidates ) external {
      require ( msg . sender == owner , " Only owner can
      initialize candidates " ) ;
      require ( _candidates . length > 0 , " Candidates list
      cannot be empty " ) ;
      for ( uint i = 0; i < _candidates . length ; i ++) {
        validCandidates [ _candidates [ i ]] = true ;
      }
    }
    function vote ( bytes32 _candidate ) external {
      require (! hasVoted [ msg . sender ] , " You have already
      voted ! " ) ;
      require ( validCandidates [ _candidate ] , " Invalid
      candidate " ) ;
      votes [ _candidate ]++;
      hasVoted [ msg . sender ] = true ;
    }
    function getVotes ( bytes32 _candidate ) external view
    returns ( uint ) {
      return votes [ _candidate ];
    }
  }
  ```
4. Compile the Smart Contract
  - Run the following command inside the project directory: truffle compile
  - If successful, it generates compiled contract artifacts in the `build/` folder.
5. Deploy the Contract Using Truffle
  - Create a deployment script inside the `migrations/` folder. Name it 2 deploy `contracts.js`:
  ```javascript
  const Voting = artifacts . require ( " Voting " ) ;
  module . exports = function ( deployer ) {
    deployer . deploy ( Voting , [ " Alice " , " Bob " , " Charlie " ]) ;
  };
  ```
  - Modify truffle-config.js to connect to Ganache:
  ```javascript
  module . exports = {
    networks : {
      development : {
        host : " 127.0.0.1 " ,
        port : 7545 , // Use the port from Ganache
        network_id : " * "
      }
    },
    compilers : {
      solc : {
        version : " 0.8.19 "
      }
    }
  };
  ```
  - Deploy the contract:
  - `truffle migrate --network development`
6. Interact with the Smart Contract
  - Use Truffle Console to interact with the deployed contract:
  - `truffle console --network development`
  - Check the deployed contract address:
  - `Voting.deployed().then(instance => instance.address)`
  - Call Functions:
    - Vote for “Alice”
    - Get votes for “Alice”
    - Vote for “Bob”
    - Get votes for “Bob”
7. Connect MetaMask to Ganache
  - Open MetaMask, click Networks → Add Network Manually.
  - Enter the following details:
  - Network Name: Ganache Local
  - New RPC URL: http://127.0.0.1:7545
  - Chain ID: 1337
  - Import a private key from Ganache to use test accounts.

## Expected outcomes
- Understand Solidity programming and smart contracts.
- Deploy contracts using Truffle & Ganache.
- Interact with contracts using Truffle Console & MetaMask.
- Learn about gas fees, transactions, and local testing.

## Report content
- Explain Voting smart contract by adding detailed comments to the listing
(line by line)
- Describe Truffle, Ganache, and MetaMask and their functions.
- Successfully compile the contract without errors.
- Deploy the contract using Truffle and Ganache.
- Show transaction logs and contract interactions using Truffle Console.
- Provide proof of execution (e.g., voting, retrieving votes).
- Include relevant screenshots (Truffle Console, Ganache, MetaMask).
