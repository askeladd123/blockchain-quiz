### Core topics & must-know terms for the exam

* **Cryptographic foundations**

  * **Cryptographic hash functions** – collision-resistance, hiding, puzzle-friendliness
  * **Hash pointer** & **Merkle tree** – tamper-evident links, log⁄block membership proofs
  * **Digital signature (ECDSA)** – unforgeability, integrity, non-repudiation
  * **Public key = identity** – key-pair generation, address derivation

* **Toy currencies & double-spend**

  * **GoofyCoin** (no protection) → **ScroogeCoin** (single authority) → need for distributed consensus

* **Bitcoin consensus & security**

  * **Proof-of-Work (SHA-256)**, target & **difficulty adjustment (every 2016 blocks)**
  * **Longest-valid-chain rule**; 51 % capabilities & limits
  * Strategic attacks: **selfish mining**, **feather-forking**, block withholding

* **Bitcoin data structures**

  * **UTXO model** – unspent outputs, transaction inputs
  * **Transaction fields** – version, `vin`, `vout`, lock-time, SegWit witness, weight
  * **Standard scripts** – P2PKH, P2SH, multisig, **CLTV/CSV**, Taproot key-path & script-path
  * **Block header** – version, prev\_hash, merkle\_root, timestamp, bits, nonce; coinbase tx

* **Bitcoin Core & JSON-RPC**

  * Key RPCs: `getblockchaininfo`, `getblock`, `getrawtransaction`, `decoderawtransaction`, `getmempoolentry`
  * Using **`bitcoin-cli --rpcconnect=<host> --rpcuser=<u> --stdinrpcpass ...`** for full-node queries

* **Key storage & wallets**

  * **Hot vs cold storage**, hardware wallets
  * **HD wallets (BIP-32/39/44)**, seed phrases, xpub / xprv
  * **Base58** / **Bech32 (bc1 / tb1)** address formats
  * Brain wallet pitfalls; secret-sharing & multisig escrow (2-of-3)

* **Mining economics & hardware**

  * Evolution: CPU → GPU → FPGA → ASIC
  * Mining pools, shares, fee market, block subsidy halving

* **Privacy & anonymity layers**

  * Graph heuristics (input linking, change detection)
  * **CoinJoin**, decentralized mixers, centralized tumblers
  * **Zerocoin / Zerocash** – zk-proof-based anonymity
  * Network privacy: Tor, Dandelion

* **Alternative puzzles & consensus**

  * **Memory-hard PoW** (scrypt, Cuckoo Cycle)
  * **Proof-of-Useful-Work** (Primecoin, Permacoin)
  * **Non-outsourceable puzzles** to hinder pools
  * **Proof-of-Stake** basics (validator stake, energy reduction)

* **Altcoins & cross-chain tech**

  * **Litecoin** (scrypt, 2.5 min blocks, first with SegWit)
  * Merge mining (Namecoin), sidechains (Liquid, RSK)
  * **Atomic cross-chain swaps** & **HTLCs**

* **Layer-2 scaling**

  * **Lightning Network** – payment channels, commitment & revocation tx, cooperative / forced close

* **Smart-contract stack (Ethereum)**

  * **Solidity / Vyper**; **gas** metering
  * **Truffle** project structure (`contracts/`, `migrations/`, tests)
  * **Ganache** local chain, MetaMask RPC setup
  * Example: **Voting.sol** permissions (`require(msg.sender == owner, …)`)

* **Blockchain for cybersecurity & future use cases**

  * Commitments & **secure timestamping** (OP\_RETURN, burn addresses)
  * **Colored coins**, tokenization, smart property, dispute mediation

* **Exam-friendly term bank**
  `UTXO` · `coinbase` · `mempool` · `SegWit` · `Taproot` · `HTLC` · `CSV/CLTV` · `SPV client` · `Merkle proof` · `difficulty bits` · `nonce / extra-nonce` · `pay-to-witness-script-hash (P2WSH)` · `scrypt` · `Schnorr` · `gas limit / gas price` · `BIP-68` · `Replace-by-Fee (RBF)` · `proof-of-reserves` · `atomic swap` · `sidechain peg`
