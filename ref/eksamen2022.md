## 1 Altcoin allocation

There are several ways in which new coins in an altcoin can be allocated to users. Which of these require changes to Bitcoin?  
**Select one or more alternatives:**

- [x] Bitcoin is used as a “reserve currency” for the altcoin — a unit of the altcoin can be created by putting 1 BTC into escrow; the bitcoin can be released by provably destroying one altcoin unit  
- [ ] All coins in the altcoin are generated through (merge) mining and are allocated to miners  
- [ ] Altcoin allocation is “grandfathered” from Bitcoin — every owner of bitcoins becomes the owner of a certain number of altcoins (in a fixed proportion of bitcoins to altcoins)  
- [ ] A unit of the altcoin is created by provably destroying one bitcoin  

## 2 Unlinkability

Unlinkability in Bitcoin could mean  
**Select one or more alternatives:**

- [ ] It's hard to link different transactions having the same output address  
- [x] It's hard to link different addresses owned by the same user  
- [ ] It's hard to link different transactions having the same input address  
- [x] It's hard to link different transactions made by the same user  

## 3 Distributed consensus

Which of these factors make distributed consensus hard?  
**Select one or more alternatives:**

- [x] Nodes may crash  
- [ ] Encrypted messages may be intercepted and decrypted  
- [x] Nodes may be taken over by malware  
- [x] There is latency on the network  


## 4 Zero-knowledge proof

What is “zero knowledge” about a zero-knowledge proof?  
**Select one or more alternatives:**

- [ ] It is a proof that you have no knowledge of something  
- [ ] It takes no outside knowledge to verify the correctness of the proof  
- [x] It is a proof that doesn’t reveal any knowledge other than the statement’s truth  
- [ ] It is a proof that requires no knowledge to create  

## 5 Cold wallet storage

Which of the following statements are true about cold wallet storage?  
**Select one or more alternatives:**

- [ ] Cold storage can store more bitcoins  
- [ ] Cold storage tends to be more convenient  
- [x] Cold storage keys in a device without network access  
- [x] Hot storage wallets can generate arbitrarily many cold storage addresses without contacting the cold storage  


## 6 Typical transaction

In a typical transaction  
**Select one or more alternatives:**

- [x] Each input contains a signature  
- [ ] Each output contains a signature  
- [ ] There is one signature that covers all the inputs  
- [ ] There is one signature that covers all the outputs  

## 7 Vigilante attack

In vigilante attack against a mining pool, the attacker,  
**Select one or more alternatives:**

- [ ] discards both shares and blocks that he finds  
- [ ] submits both shares and blocks that he finds  
- [ ] discards shares while submitting blocks to a different mining pool  
- [x] submits shares but discards blocks  


## 8 Secure timestamping

In which of these situations could secure timestamping be useful? Assume that there is no way to prove that you didn’t timestamp multiple values.  
**Select one or more alternatives:**

- [ ] Proving that you can predict the winner of the 2020 US presidential election  
- [ ] Securely saving a document at a specific time  
- [ ] Proving that you don't know something at a specific time  
- [x] Proving possession of a document at a specific time  

## 9 Bitcoin micropayments

Alice is paying for a service using Bitcoin micropayments. If she simply disconnects at some point without notifying Bob and stops sending micropayments, what can Bob do?  
**Select one or more alternatives:**

- [ ] Bob can redeem the maximum amount that Alice initially escrowed into a multisig address  
- [ ] Bob can refuse to sign the refund transaction, so both Alice and Bob will end up losing Bitcoins, which will sit in the multisig escrow forever  
- [ ] Bob is out of luck. He doesn’t earn any Bitcoins and must pursue legal recourse  
- [x] Bob can redeem the latest micropayment transaction that Alice sent in the last time period before disconnecting, which matches the length of service she received  


## 10 51% attack

A 51% attacker can potentially: (check all that apply)  
**Select one or more alternatives:**

- [ ] Change the block reward  
- [ ] Steal coins from an existing address  
- [x] Suppress transactions from the block chain  
- [x] Make it unprofitable for other miners to mine  

## 11 Conflicting transactions

If two conflicting transactions A → B and A → C are both broadcast almost simultaneously from different nodes, what determines which one will eventually end up in the block chain?  
**Select one or more alternatives:**

- [ ] Each node has its own version of the block chain containing the transaction that it heard about first  
- [x] The miner who finds the next block will likely resolve the tie by including one of the transactions in the block  
- [ ] The transaction that reaches the majority of nodes first will win  
- [ ] The transaction that was broadcast first will win  


## 12 Bitcoin wallet

What is a Bitcoin wallet?  
**Select one or more alternatives:**

- [x] A piece of software that remembers an individual's Bitcoin addresses and keys  
- [ ] A type of mining software  
- [ ] An online exchange that people can go to in order to acquire bitcoins  
- [ ] An address that contains a lot of unspent bitcoins 

## 13 Hard fork

Which of the following requires a hard fork? (check all that apply)  
**Select one or more alternatives:**

- [ ] A requirement that each transaction have its outputs sorted by value in ascending (or non-decreasing) order  
- [x] Increasing the maximum permitted size of blocks  
- [ ] Adding a new OP_SHA3 script instruction  
- [ ] Disabling the OP_SHA1 instruction  
- [ ] Decreasing the maximum permitted size of blocks  


## 14 Bitcoin exchanges

Which of these are risks of Bitcoin exchanges that are NOT risks of maintaining one’s own hot or cold wallet? (Check all that apply)  
**Select one or more alternatives:**

- [x] Ponzi schemes  
- [ ] Key compromises or leaks  
- [x] Bank runs  
- [ ] Double-spend attacks  
 
## 15 Mining pools

Mining pools...  
**Select one or more alternatives:**

- [x] typically make all their members search for blocks with the same coinbase address (the address that receives mining rewards)  
- [ ] evenly divide up block rewards between all members of the pool  
- [ ] can undermine the security of Bitcoin’s consensus algorithm, but this isn’t a problem in practice since the majority of miners aren’t part of pools  
- [ ] let members earn more rewards, on average, than they would by mining alone  


## 16 Consensus in practice

Why is Bitcoin able to reach consensus in practice despite this being a generally difficult problem? (check all that apply)  
**Select one or more alternatives:**

- [x] Consensus only has to be reached over long-time scales  
- [ ] The order of blocks doesn’t matter for consensus  
- [ ] Only small groups of nodes have to reach consensus rather than the network having to globally reach consensus  
- [x] Financial incentives cause participants to work together  

## 17 Malicious node

What can a malicious node do?  
**Select one or more alternatives:**

- [ ] Ignore a proposed valid block  
- [ ] Create valid transactions originating from someone else’s address  
- [ ] Prevent a valid transaction from getting any confirmations  
- [x] Ignore the longest valid branch rule when proposing a new block  


## 18 Bitcoin and Ethereum

Bitcoin and Ethereum are two most popular blockchain technologies.  
Select correct statements below:  
**Select one or more alternatives:**

- [x] Both use append-only ledger.  
- [ ] Both use SHA256 for PoW  
- [ ] Both use block of approximately the same size  
- [ ] Both use virtual machine to run smart contracts  
- [x] Both are permissionless  

## 19 Bitcoin miners

Which of the following are true about Bitcoin miners?  
**Select one or more alternatives:**

- [x] The target hash has become so small that the block header nonce alone isn’t generally large enough to allow miners so search enough of the hash output space to find a valid block  
- [ ] Over a 2 week period, the average time to mine a block is always 10 minutes  
- [x] The mining difficulty is recomputed roughly every 2 weeks to keep the proof-of-work puzzle difficult  
- [ ] Bitcoin miners can more efficiently mine for blocks by specifically targeting parts of the nonce search space that have more puzzle solutions  


## 20 Smart property

In the smart property scenario presented, where Alice sells her car to Bob via an atomic transaction:  
**Select one or more alternatives:**

- [ ] Alice and Bob must be physically near the car for the transfer of control to take effect  
- [ ] Bob must make sure that Alice deletes her private key so that she does not retain the ability to activate the car  
- [ ] Requires modifications to Bitcoin because there is no way for two different people who don’t trust each other to securely sign the same transaction  
- [x] The protocol doesn’t prove to Bob, before the sale, that the transaction output that Alice wants to sell him actually corresponds to the car he wants to buy  

## 21 Bitcoin micropayments transactions

Bitcoin micropayments require the use of: (check all that apply)  
**Select one or more alternatives:**

- [x] Multisignature Transactions  
- [ ] Proof of burn  
- [x] Time-locked transactions  
- [ ] Pay-to-script-hash  


## 22 Bitcoin’s script

Bitcoin’s script supports instructions whose effect is: (check all that apply)  
**Select one or more alternatives:**

- [x] Conditional execution (if/then)  
- [x] Hashing  
- [ ] Recursion  
- [ ] Looping  

## 23 Transfer coins

In ScroogeCoin, you have ten coins each of value 3.0. You’d like to transfer coins of value 5.0 to your friend. This requires:  
**Select one or more alternatives:**

- [ ] Two transactions, one new coin created, and two signatures  
- [ ] Two transactions, two new coins created, and four signatures  
- [x] One transaction, two new coins created, and two signatures  
- [ ] One transaction, one new coin created, and one signature  


## 24 Block chain data structure

Which of the following types of modifications of a block chain data structure can be detected?  
**Select one or more alternatives:**

- [x] Re-ordering of blocks  
- [x] Deletion of a block  
- [x] Tampering of data in a block  
- [x] Insertion of a block  

## 25 Merge mining

In a merge-mined alt coin scenario:  
**Select one or more alternatives:**

- [ ] The alt coin has the same hash target as Bitcoin at all times  
- [ ] Altcoin block headers include a hash pointer to a Bitcoin block  
- [x] Bitcoin block headers include the Merkle root of transactions for an altcoin block  
- [ ] Bitcoin blocks include transactions from the alt coin  


## 26 SHA-256

Which of the following is true of SHA-256?  
**Select one or more alternatives:**

- [ ] It has been proven not to have a collision  
- [ ] We hope that there are no collisions  
- [ ] It has been proven that there is no fast way to find collisions  
- [x] No collision has ever been found  

## 27 Virtual mining

Which of these is true of virtual mining?  
**Select one or more alternatives:**

- [x] Several variations of virtual mining have been proposed  
- [ ] Virtual mining has been successfully achieved in practice using the 'script' memory-hard hash function  
- [x] Virtual mining does away with most of the power requirements of proof-of-work systems  
- [ ] A proof-of-stake system makes 51% attacks impossible  


## 28 Identities generation

If you generate numerous identities (public keys) for yourself and interact online using those different identities, what might happen? (Check all that apply)  
**Select one or more alternatives:**

- [ ] Others may be able to link your identities because public keys generated on the same computer look similar  
- [ ] Others might be able to take over your identities even if your randomness is good  
- [x] Others may be able to de-anonymize you by analyzing your activity patterns  
- [ ] Others may be able generate some your new future identities  

## 29 K-out-of-N secret sharing scheme

In the K-out-of-N secret sharing scheme presented, the size of each share (in bits) will be  
**Select one or more alternatives:**

- [ ] N times the size of the secret  
- [ ] K times the size of the secret  
- [x] equal to the size of the secret  
- [ ] 1/K times the size of the secret  


## 30 Signature verification

Which of these keys are required for verifying a signature?  
**Select one or more alternatives:**

- [x] The public key  
- [ ] Both the secret and the public key  
- [ ] The secret key  
- [ ] None. Keys are required only for signing; anyone can verify the signature without a key  


## 31 Finding blockhash

Fill in last 4 characters (in hexadecimal) of the blockhash for Bitcoin block of height 222223 here:  

`ecf5`  

## 32 Output address

Enter the first 4 characters of the first (#0) output address of the last transaction in Bitcoin block of height 222226 here:  
`1Fh6`  


## 33 Number of inputs

Enter the number of inputs in the last transaction in Bitcoin block of height 222226 here:  
`1`  


## 34 Finding nonce

Enter the first four digits of the nonce from Bitcoin block of height 222226 here:  
`3970`  


## 35 Number of transactions

Enter the number of transactions in Bitcoin block of height 222226 here:  
`806`  


## 36 Output value

Enter the output value (in BTC, two digits after dot without rounding, f ex for 0.347 write 0.34) for the first output (#0) of the last transaction in Bitcoin block of height 222226 here:  
`9.54`  


## 37 Number of outputs

Enter the number of outputs in the last transaction in Bitcoin block of height 222223 here:  
`2`  
