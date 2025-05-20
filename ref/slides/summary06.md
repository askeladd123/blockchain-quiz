# 🕵️ Lecture 6: Bitcoin and Anonymity

## 🧱 Anonymity Basics

### Pseudonymity vs Anonymity
- **Bitcoin addresses ≠ identities** → pseudonymous
- True anonymity requires **unlinkability**
- Anonymity = pseudonymity + unlinkability

### Why Unlinkability Matters
- Prevent deanonymization via service usage or metadata
- Avoid linking multiple actions or addresses to one user

### Anonymity Set
- The group one blends into
- Depends on adversary’s knowledge and assumptions

---

## 🕵️‍♂️ De-Anonymizing Bitcoin

### Linking Techniques
- Shared inputs suggest common ownership
- Change address patterns (wallet software behavior)
- Clustering: transitive linkage via transaction graphs

### Identifying Services
- Services (wallets, exchanges, etc.) often have known patterns
- Researchers have tagged thousands of addresses by transacting with them

### Network-Level Attacks
- First node to broadcast a transaction may be the source
- **Solution**: Use Tor or mix networks

---

## 🔄 Mixing

### Centralized Mixing
- Intermediary combines and reshuffles funds
- Examples: Online wallets (regulated, may log data), Mixing services (no guarantees)

### Principles
1. Use multiple mixes
2. Mixes should have a common API
3. No single point of trust

---

## 🤝 Decentralized Mixing

### CoinJoin
- Multiple users collaboratively build one transaction
- Inputs/outputs are unlinkable without knowing the mapping

### Process
1. Find peers
2. Share addresses
3. Build transaction
4. Collect signatures
5. Broadcast

### Challenges
- Peer discovery
- Input-output link leakage
- Denial of service

### Solutions
- Anonymity networks (Tor)
- Merge avoidance (multiple outputs per receiver)
- Proof-of-work or burn to limit DoS

---

## 🧪 Cryptographic Mixing: Zerocoin & Zerocash

### Zerocoin
- Protocol-level anonymous coin mixing
- Uses **zero-knowledge proofs (ZKPs)**
- Breaks link between spend and receive

#### Minting
- Commit `H(S, r)` to the blockchain (S = serial, r = secret)

#### Spending
- Reveal S
- Prove `H(S, r)` exists in blockchain without revealing r

### Zerocash
- All transactions are private by default
- Adds hidden amounts, merging/splitting
- Needs a trusted setup phase (securely destroyed secrets)

---

## 🔐 Zero-Knowledge Proofs (ZKPs)

### Concept
- Prove a statement is true without revealing why it’s true

### Fiat-Shamir Protocol
- Interactive ZKP based on modular square roots
- Probability of cheating drops exponentially with repetitions

---

## 📊 Anonymity System Comparison

| System      | Type               | Attacks                        | Deployability         |
|-------------|--------------------|--------------------------------|------------------------|
| Bitcoin     | Pseudonymous       | Tx graph analysis              | Default               |
| Single Mix  | Mix                | Graph analysis, bad mixes      | Usable today          |
| Mix Chain   | Mix                | Side channels                  | Bitcoin-compatible    |
| Zerocoin    | Cryptographic Mix  | Side channels (maybe)          | Altcoin               |
| Zerocash    | Untraceable        | None (but tricky setup)        | Altcoin, complex init |

---

## 🌐 Tor & Anonymous Communication

### Threat Model
- Hide sender, receiver, and content

### Tor Design
- Onion routing with **layered encryption**
- Safe if at least one node is honest
- Vulnerable at exit nodes (if unencrypted)

### Hidden Services
- Servers also hide IPs
- Use rendezvous points and .onion addresses

