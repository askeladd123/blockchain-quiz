# ⚙️ Lecture 7: Alternative Mining Puzzles

## 🧩 Puzzle Design Principles

### Requirements
- **Cheap to verify**
- **Adjustable difficulty**
- **Progress-free**: memoryless, fair lottery
- **Proportionality**: chance of success ∝ hash power

### Bad Puzzle Example
- **Sequential puzzles**: fastest miner always wins

---

## 🚫 ASIC Resistance

### Motivation
- Broaden participation (home users, phones)
- Prevent hardware monopolies

### Strategies
- **Memory-hard puzzles**: require significant memory (e.g. scrypt)
- **Memory-bound puzzles**: memory access dominates time

### scrypt
- Fills and randomly accesses large memory arrays
- ASICs exist, so not fully resistant

### Cuckoo Cycle
- Graph-based memory-hard PoW (used in Grin, Beam)
- Finds cycles in a bipartite graph

### X11
- Uses 11 different hash functions sequentially
- Improves security and energy efficiency
- Used by Dash

---

## 🔧 Proof of Useful Work

### Primecoin
- Finds Cunningham chains of primes
- Adds value by contributing to number theory

### Permacoin
- Miners prove they store data (proof-of-storage)
- Useful side effect: distributed file storage

---

## 🚫 Nonoutsourceable Puzzles

### Motivation
- Discourage large mining pools
- Prevent coercion/hacks targeting pool operators

### Vigilante Attack
- Saboteur submits shares but withholds real solutions

### Puzzle Design
- Require **digital signature** to solve the puzzle
- Only the solver (with private key) can claim the reward

### Tradeoff
- Also blocks decentralized pools (e.g., P2Pool)
- May push miners to centralized hosting

---

## 🧮 Proof-of-Stake (PoS)

### Concept
- "Virtual mining": no hardware needed
- Coins generate blocks based on stake

### Benefits
- Lower energy use
- Environmentally friendly
- No ASIC advantage
- Stronger 51% attack resistance

### Variants
- **Proof-of-Stake**: reward increases with coin age
- **Proof-of-Deposit**: stake locked temporarily, then reclaimed

---

## 🔁 Summary
- Alternative puzzles target ASIC resistance, decentralization, or utility
- Tradeoffs exist between efficiency, fairness, and real-world value
- Proof-of-Stake is a major PoW alternative with growing adoption
