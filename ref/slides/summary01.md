# 📘 Lecture 1: Introduction to Crypto and Cryptocurrencies

## 🧠 Key Topics

* Cryptographic Hash Functions
* Hash Pointers and Data Structures
* Digital Signatures
* Public Keys as Identities
* Simple Cryptocurrency Example (GoofyCoin)

---

## 🔐 1.1 Cryptographic Hash Functions

### Important Properties

* **Collision-Resistance**: Hard to find two different inputs `x ≠ y` such that `H(x) = H(y)`
* **Hiding**: Given `H(x)`, infeasible to find `x`
* **Puzzle-Friendliness**: Hard to find `x` such that `H(k || x) = y` (used in mining)

### Applications

* **Message Digest**: Identify a file or message uniquely with its hash
* **Commitments**: Cryptographic “sealed envelopes” (used in online bids)
* **Proof-of-Work**: Used in spam reduction and mining by requiring hash outputs with certain properties (e.g., starting with `N` zero bits)

### Common Hash Algorithms

* **MD5** – Broken
* **SHA-1** – Deprecated
* **SHA-2 (SHA-256, etc.)** – Widely used (e.g., Bitcoin)
* **SHA-3** – Newer standard (FIPS 202)

---

## 🗂 1.2 Hash Pointers and Data Structures

### Concepts

* **Hash Pointer**: Pointer + hash of the data it points to
* **Tamper-evident logs**: Core idea of blockchains

### Structures

* **Blockchain**: Linked list of blocks using hash pointers
* **Merkle Tree**: Binary tree with hash pointers, allows:

  * Efficient membership proofs: `O(log n)`
  * Protecting many items with one root hash

---

## ✍️ 1.3 Digital Signatures

### Requirements

* Only the owner can sign (private key)
* Anyone can verify (public key)
* Tied to a specific message

### API

```text
(sk, pk) := generateKeys()
sig := sign(sk, message)
verify(pk, message, sig) => true/false
```

### Properties

* **Unforgeability**: Adversary cannot forge signatures for new messages
* **Used in Bitcoin**: ECDSA (Elliptic Curve Digital Signature Algorithm)

---

## 🆔 1.4 Public Keys as Identities

### Concepts

* Public key = identity
* Can create a new identity by generating a new key pair
* **Decentralized Identity**: No central authority needed

### Privacy

* Bitcoin addresses aren't tied to real identities but may be linkable via behavior

---

## 💰 1.5 GoofyCoin – A Simple Cryptocurrency

### Key Ideas

* Coins are created and assigned via signed transactions
* Ownership proven through chain of signatures

### Problem: ⚠️ **Double-Spending**

* Main challenge in digital currencies

### Solution: **ScroogeCoin**

* Introduces blocks and immutable logs
* Transactions recorded in blocks to prevent double spending

---

## 📚 Recommended Reading

* **Mastering Bitcoin** by Andreas M. Antonopoulos
* **Mastering Blockchain** by Imran Bashir
