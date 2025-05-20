# 🔄 Lecture 9: Altcoins and the Cryptocurrency Ecosystem

## 📜 History of Altcoins

### Overview
- Over 8800 altcoins have launched as of Feb 2024
- Varied features: mining puzzles, consensus models, use cases, monetary policy

### Early Examples
- **Namecoin (2011)**: DNS & identity on blockchain
- **Litecoin (2011)**: Faster blocks, memory-hard PoW (scrypt)
- **Peercoin (2012)**: First Proof-of-Stake (PoS)
- **Dogecoin (2013)**: Culture-driven, tipping, sponsorship

---

## ⚙️ Technical Features of Altcoins

- Modified consensus mechanisms (PoW variants, PoS)
- Different block times, supply schedules, fees
- Application-specific features (e.g., smart contracts, naming services)

---

## ⚔️ Interaction with Bitcoin

### Mining Attacks
- Small altcoins vulnerable to 51% attacks from large Bitcoin pools

### Merge Mining
- Allows miners to mine Bitcoin and compatible altcoins simultaneously
- Used by Namecoin, Devcoin, etc.
- Risks: reduces miner validation, facilitates attacks

---

## 🔁 Atomic Cross-Chain Swaps (ACCS)

### Purpose
- Enables secure token swaps across chains without trust or intermediaries

### Mechanism
1. Alice creates a secret `x` and a hash `h = H(x)`
2. Both sides create deposit transactions with hash locks and refund conditions
3. When Alice spends Bob’s LTC, she reveals `x`
4. Bob uses `x` to claim Alice’s BTC

### Benefits
- Trustless, peer-to-peer exchange
- Eliminates need for centralized exchanges

---

## 🪙 Bitcoin-Backed Altcoins and Sidechains

### Methods of Value Transfer
- **Grandfathering**: BTC holders get tokens
- **Burning**: send BTC to unspendable address
- **Pegged**: hold BTC in escrow, issue 1:1 tokens

---

## 🔗 Sidechains

### Concept
- Independent chains linked to Bitcoin with two-way pegs
- Enables assets to move between main chain and sidechain

### Steps
1. Lock BTC on main chain
2. Confirm lock and wait for security window
3. Issue equivalent tokens on sidechain
4. Reverse to move funds back

### Security
- Sidechains must secure themselves
- Can use **merged mining** to share security with Bitcoin

---

## 🔧 Examples of Sidechain Platforms

- **RSK (Rootstock)**:
  - Smart contracts on Bitcoin
  - Two-way peg, merged mining
- **Liquid (by Blockstream)**:
  - Faster, private settlement network
  - Used by exchanges for BTC and asset transfers

---

## 🧾 Summary

- Altcoins explore alternative tradeoffs and features
- Merge mining and atomic swaps enable interoperability
- Sidechains extend Bitcoin with external features while retaining BTC value anchoring
