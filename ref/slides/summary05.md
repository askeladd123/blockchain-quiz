# ⛏ Lecture 5: Bitcoin Mining

## 🔁 Miner Roles
- Store and broadcast the blockchain
- Validate transactions
- Vote on consensus by hash power

---

## 🧱 Mining Process

### Steps to Mine
1. Join network, listen for transactions
2. Validate new blocks
3. Assemble a valid block
4. Find nonce to meet difficulty target
5. Broadcast block
6. Receive rewards (block reward + fees)

### Block Structure
- Includes a coinbase transaction
- Block hash must be below the difficulty target
- Difficulty adjusted every 2016 blocks

---

## ⚙ Mining Hardware

### SHA-256
- Part of SHA-2 family
- Used for Bitcoin's PoW
- Still secure, designed by NSA (2001)

### CPU Mining
- Inefficient (~139,000 years/block)
- High-end PC: ~10–20 MHz

### GPU Mining
- Parallel processing
- ~20–200 MHz per card
- More efficient but high power usage

### FPGA Mining
- Customizable, optimized for bitwise ops
- ~100–1000 MHz
- Higher setup complexity and cost

### ASIC Mining
- Application-specific chips
- Highest efficiency, lowest flexibility
- Professional mining centers dominate

---

## 🔋 Energy and Ecology

### Energy Consumption
- Hardware manufacturing (embodied)
- Electricity use for hashing
- Cooling infrastructure

### Bitcoin Network Power
- Increasing continuously
- Tracked by cbeci.org and others

### Comparison
- Bitcoin uses energy like small countries
- But all payment systems use energy

---

## 👥 Mining Pools

### Concept
- Miners collaborate and share rewards
- Submit “shares” as proof of work

### Payout Methods
- **Pay per share**: fixed per share
- **Proportional**: based on share of total effort

### Protocols
- Stratum, Getwork, Getblockshare
- Some hardware support pool APIs

### History
- First pools in 2010
- By 2014, >90% mined via pools
- Pools dominate due to predictability

---

## 🎯 Mining Strategies

### Default Choices
- Include transactions with fees
- Build on longest valid chain
- Publish block immediately

---

## 🧨 Attacks & Strategic Mining

### Forking Attacks
- Create competing chains to reverse or censor transactions
- Possible with α > 0.5

### Bribery Attacks
- Temporarily rent majority hash power
- Run a loss-making pool
- Add large transaction tips

### Block Withholding (Selfish Mining)
- Delay block publication to gain an advantage
- Effective if attacker can win races

### Feather Forking
- Threaten to fork if a blacklisted transaction is included
- Partial enforcement possible even with α < 0.5
- Can be used for censorship, fees, extortion

---

## 💸 Transaction Fees

### Calculation
- `fee = sum(input) - sum(output)`
- Priority: `(input_value × input_age) / tx_size`

### Importance
- Will increase as block rewards decrease
- Future miner incentives depend on fees

---

## 🧠 Summary
- Miners choose strategies freely
- Little deviation from default strategies today
- No complete game-theoretic model yet
