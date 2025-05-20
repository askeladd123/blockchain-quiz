# 🧩 Lecture 2: How Bitcoin Achieves Decentralization

## 🌐 Centralization vs. Decentralization

* These are **competing paradigms** in digital systems.
* Decentralization isn't binary—e.g., email uses a decentralized protocol (SMTP) but is dominated by centralized providers.
* Bitcoin aims for decentralized control over:

  * Ledger maintenance
  * Transaction validity
  * Coin issuance
  * Rule updates

---

## 🛠 Aspects of Bitcoin’s Decentralization

* **Peer-to-peer network**: Anyone can join.
* **Mining**: Open but tends to centralize due to economies of scale.
* **Software updates**: Core developers wield significant influence.
* **Service layer**: Wallets, exchanges, etc., are often centralized.

---

## 🧠 Distributed Consensus

* Key challenge: how to decentralize something like ScroogeCoin.
* **Consensus protocol goals**:

  * All honest nodes agree.
  * Value originates from an honest node.

---

## 🤯 Why Consensus is Hard

* No global clock or synchronized time.
* Network imperfections and latency.
* Byzantine fault tolerance:

  * Cannot achieve consensus if ≥⅓ nodes are faulty (Byzantine Generals Problem).
  * Deterministic consensus impossible with even 1 faulty node (FLP result).

---

## 🧪 Bitcoin’s Practical Approach

* **Incentives** and **randomness** replace fixed roles and identity.
* Consensus forms **over time** (\~1 hour) via longest valid chain.
* Implicit consensus through **block acceptance**:

  * Nodes extend the longest valid chain.

---

## ⚙️ Bitcoin Consensus Algorithm (Simplified)

1. New transactions broadcast.
2. Nodes bundle transactions into blocks.
3. A random node "wins" and proposes a block.
4. Nodes verify and accept only valid blocks.
5. They show acceptance by building on the accepted block.

---

## 🛡 Security Against Attacks

* **Forgery/theft**: Impossible due to digital signatures.
* **Denial of service**: Ineffective; next miner may include excluded transaction.
* **Double-spending**:

  * Prevented by consensus on longest valid chain.
  * Six confirmations = standard heuristic.

---

## 💸 Incentives in Bitcoin

### Block Reward

* Fixed reward (currently **3.125 BTC**) for creating a block.
* Halves every 210,000 blocks (\~every 4 years).
* Will stop by \~2140 (21 million total BTC supply).

### Transaction Fees

* Voluntary “tip” left by senders, rewarded to miner.

---

## 🔐 Proof of Work (PoW)

### Goals

* Prevent Sybil attacks.
* Simulate random selection of block proposer.

### Hash Puzzle

* Find `nonce` such that:
  `H(nonce || prev_hash || tx ...) < target`
* Only feasible strategy: trial and error.

### Properties

1. **Hard to compute**
2. **Adjustable cost**: Difficulty updated every 2016 blocks.
3. **Easy to verify**: Just hash and check against target.

---

## ⚖️ Mining Economics

* Profitable if:
  `reward > cost(hardware + electricity)`
* Reward is influenced by global hash rate and block difficulty.

---

## 🔁 Bitcoin Consensus Types

* **Value consensus**: What a bitcoin is worth.
* **State consensus**: Ledger contents.
* **Rules consensus**: Protocol behavior.

---

## ⚠️ 51% Attack Capabilities

* Cannot steal coins or change block rewards.
* Can **suppress transactions from blockchain** (not network).
* Can **undermine confidence** in the system.

---

## ❓ Open Questions

* How does consensus lead to currency value?
* What **new applications** can be built using decentralized consensus?
