# 🧱 Lecture 3: Mechanics of Bitcoin

## 🔁 Bitcoin Consensus Recap
- Append-only ledger
- Decentralized consensus
- Miners validate transactions
- Currency assumed to exist to incentivize miners

---

## 💳 Ledger Models

### Account-Based Ledger (Not Bitcoin)
- Balances per account
- Requires tracing backwards to verify balances
- Not scalable for stateless verification

### Transaction-Based Ledger (Bitcoin)
- Tracks unspent outputs (UTXOs)
- Verification via finite hash-pointer scan
- Transactions consume previous outputs, produce new outputs

---

## 🤝 Joint Payments
- Multiple inputs and signatures
- Allows pooling funds and joint authorization

---

## 🧾 Bitcoin Transaction Structure

### Metadata
- Hash, version, lock_time, size, input/output count

### Inputs (`vin`)
- Previous transaction hash + index
- Signature script (`scriptSig`)

### Outputs (`vout`)
- Value (in BTC)
- Output script (`scriptPubKey`): recipient conditions

---

## 🧮 Bitcoin Scripts

### General
- Stack-based
- No loops (not Turing complete)
- Compact and crypto-focused
- ~256 opcodes (some disabled/reserved)

### Example: P2PKH
```
scriptPubKey:
OP_DUP OP_HASH160 <pubKeyHash> OP_EQUALVERIFY OP_CHECKSIG

scriptSig:
<sig> <pubKey>
```

### OP_CHECKMULTISIG
- Multi-signature validation (e.g., 2-of-3)

---

## 🔐 Advanced Script Use Cases

### Escrow
- 2-of-3 multisig involving buyer, seller, third party

### Green Addresses
- Trusted intermediaries sign on behalf of users

### Micropayments
- Multiple signed transactions, publish one
- Requires refund mechanisms via `lock_time`

### Pay-to-Script-Hash (P2SH)
- Sends to hash of redeem script
- Actual logic revealed and executed during spending

---

## 🧠 Bitcoin Blocks

### Structure
- List of transactions
- Block header: prev_hash, time, nonce, merkle_root, etc.

### Coinbase Transaction
- First transaction in block
- No input; creates new coins (block reward)

---

## 🌐 Bitcoin Network

### P2P Characteristics
- Random topology, TCP port 8333
- Nodes can join/leave anytime
- Gossip-based flooding for transaction/block propagation

### Transaction Propagation
- Must be valid, non-conflicting, and standard
- Whitelisted scripts preferred

---

## ⚠️ Race Conditions & Pools
- Nodes might receive conflicting transactions
- Different mempool views
- Miner behavior may vary

---

## 📏 Network Metrics

- ~20,708 reachable nodes (Jan 2025)
- Blockchain size: >600GB
- UTXO set: ~180 million (Jan 2025)

---

## 🖥 SPV Clients (Thin Clients)
- Only store block headers
- Request full transactions as needed
- Rely on full nodes for verification

---

## 🛠 Software Diversity
- ~90% use Core (C++)
- Other clients: BitcoinJ (Java), btcd (Go), Libbitcoin (C++)

---

## 🚧 Limitations & Scalability

### Hard-Coded Limits
- Block time: 10 min
- Block size: 1MB (up to 4MB post-2017)
- Max supply: 21 million BTC
- Max reward: Starts at 50 BTC, halves over time

### Throughput
- ~7 tx/s (limited by block size and tx size)
- Compared to Visa (2000–10000 tx/s)

### Crypto Limits
- ECDSA, EdDSA, Schnorr (post-2021)
- Fixed hash functions

---

## 🔄 Protocol Changes

### Hard Forks
- Add new rules that older clients reject
- Causes network splits if not all upgrade

### Soft Forks
- Restrictive changes that old clients accept
- Require majority enforcement

### Examples
- P2SH (Soft fork)
- New opcodes, size changes (Hard fork)
