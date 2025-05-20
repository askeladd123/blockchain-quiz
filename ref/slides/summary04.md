# 💼 Lecture 4: How to Store and Use Bitcoins

## 🔑 Key Management

### Requirements
- **Availability**: You can access and spend your coins.
- **Security**: No one else can access your coins.
- **Convenience**

### Simple Local Storage
- Store private key in a file on your device
- Risks:
  - Device lost → key lost → coins lost
  - Device compromised → key leaked → coins stolen

---

## 👜 Wallet Software

### Features
- Tracks coins, provides interface
- Uses a separate address per coin for privacy
- Handles key management and bookkeeping

### Address Encoding
- **Base58**: avoids ambiguous characters (0, O, l, I, +, /)
- **Base58Check**: Base58 + checksum
- Address formats (prefix examples):
  - Bitcoin: `1`
  - P2SH: `3`
  - Testnet: `m`, `n`
  - Private key (WIF): `5`, `K`, `L`

### Public Key to Address
- `A = RIPEMD160(SHA256(K))`

---

## 🌡 Hot and Cold Storage

### Hot Storage
- Online, accessible
- Convenient but less secure

### Cold Storage
- Offline, secure
- Requires manual interaction or pre-generation

---

## 🌲 Hierarchical Deterministic (HD) Wallets

### Motivation
- Efficient cold wallet use
- Generate addresses without exposing keys

### HD Wallet Structure
- One seed → many keys/addresses
- Based on BIP-32, BIP-39, BIP-43, BIP-44
- Advantages:
  - One backup for all keys
  - Public keys can be derived separately for receiving
  - Useful on insecure systems

---

## 🔐 Wallet Types

### Type-0: Nondeterministic (Random)
- Just a Bunch Of Keys (JBOK)
- Older style (Bitcoin Core)
- Hard to back up

### Type-1: Deterministic (Seeded)
- All keys derived from a single seed
- Easier backup and portability

---

## 🧻 Cold Info Storage Options
1. Lock device with keys in a safe
2. Brain wallet: encrypt key with a remembered passphrase
3. Paper wallet: print and store on paper
4. Tamper-proof device: signs transactions without revealing keys

---

## 🧩 Splitting and Sharing Keys

### Secret Sharing
- Distribute key shares to multiple participants
- Need a threshold number to reconstruct key
- Example: 3-of-4 multisig for company wallet

---

## ☁️ Online Wallets and Exchanges

### Online Wallets
- Web-based, key storage in browser or cloud
- Pros: easy access
- Cons: vulnerable to hacks, trust required

### Exchanges
- Accept BTC and fiat deposits
- Offer buy/sell and wallet services
- Operate like banks (often fractional reserve)

---

## 📉 Exchange Risks and Shutdowns
- No blockchain tx when trading inside exchange
- Centralized risk: hacks, fraud, mismanagement
- 51 exchanges shut down in 2022

---

## 🧾 Proof of Reserves

### Purpose
- Show solvency, build user trust

### Methods
1. **Merkle Tree Proofs**: Efficient, shows user inclusion
2. **External Audits**: Reliable but costly
3. **On-Chain Verification**: Transparent
4. **ZK Proofs**: Private, not widely adopted
5. **Reserve-to-Liability Ratios**

---

## 💳 Payment Services

### Merchant Goals
- Accept BTC, receive fiat
- Reduce risk and complexity

### Flow
1. Customer clicks BTC payment
2. Interaction via payment service
3. Customer pays in BTC
4. Merchant gets fiat (minus small fee)

---

## 💸 Transaction Fees

### How it's calculated
- `fee = input value - output value`
- Goes to the miner who includes the tx

### Fee Priority
- Higher fee = faster inclusion
- Priority = `(sum of inputAge * inputValue) / tx size`
- Consensus fee: `0.0001 BTC per 1000 bytes`

### Approximate size
- `= 148 × Ninputs + 34 × Noutputs + 10`

### Miner Behavior
- Miners prioritize by fee and priority
- Low-fee tx may be delayed
