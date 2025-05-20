# 🧱 Lecture 8: Bitcoin as a Platform

## 🔐 Commitments and Timestamping

### Commitments
- Hash `H(x)` commits to value `x` without revealing it
- Reveal later to prove prior knowledge

### Secure Timestamping
- Prove knowledge of `x` at time `t`
- Implementations: opentimestamps.org, originstamp.com

### Techniques
- **Burn address**: send 1 satoshi to hash-derived address
- **CommitCoin**: brute-force a valid key matching a prefix
- **OP_RETURN**: provably unspendable, stores arbitrary data

---

## 🪙 Overlay Currencies & Metadata

### Overlay Protocols
- Write data to Bitcoin blockchain
- Use own validation rules (no new consensus layer)
- Ex: **Mastercoin** (now OmniLayer)

### Smart Property via Metadata
- Attach real-world claims to Bitcoin UTXOs
- Requires metadata authentication (signed statement)

### Colored Coins
- Assign meaning to specific UTXOs
- Protocols: OpenAssets
- Use marker outputs to track “colored” coins

### Applications
- Stock certificates
- Tickets
- Deeds (property, vehicles)
- Domain names

---

## 🎲 Multiparty Lotteries

### Problem
- Fair coin flips or lotteries without trust

### Solution: Hash Commitments
- Players commit to secret values: `H(x)`, `H(y)`, `H(z)`
- Reveal secrets → winner = `H(x⊕y⊕z) mod n`

### Problem: Non-Revealing Losers
- A player may refuse to reveal if losing

### Timed Commitments
- Use scripts: allow reclaiming bond only if value `x` is revealed before time `t`
- Ensures participation or forfeits bond

### Pros & Cons
- Implementable today
- Scales poorly (O(N²) transactions)
- Bonds must exceed prize to prevent sabotage

---

## 🔮 Public Randomness via Bitcoin

### Need for Randomness
- Used in lotteries, ZK proofs, security audits

### Beacons
- Publicly verifiable random data
- Examples: NIST beacon, natural sources, stock prices

### Blockchain as Beacon
- Block hash or nonce = unpredictable randomness
- Extract entropy from mined blocks
- Secure due to mining difficulty (infeasible to predict or bias)

---

## 📚 Summary

- Bitcoin’s append-only log enables:
  - Commitments & timestamping
  - Token tracking (colored coins)
  - Fair multiparty lotteries
  - Public randomness source
- Builds new layers of functionality without altering Bitcoin’s core consensus
