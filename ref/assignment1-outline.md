# Assignment 1

## Using Bitcoin Core Application Programming Interface (API)

**Deadline for report:** 05.03.2025

### Installing `bitcoin-cli` to access a full Bitcoin node on the server available via VPN:

```sh
bitcoin-cli --rpcconnect=oss.uia.no --rpcuser=uiacoin --rpcpassword="E5X-ZcDmTRl_jyjo345qYPWaQ7EB2GS5xcSFLhuLCOY=" getblockchaininfo
```

or

```sh
bitcoin-cli --rpcconnect=oss.uia.no --rpcuser=uiacoin --stdinrpcpass getblockchaininfo
```

```sh
Password: E5X-ZcDmTRl_jyjo345qYPWaQ7EB2GS5xcSFLhuLCOY=
```

You can also use Docker with `bitcoin-cli` to access the server:

```sh
docker run -it --rm ruimarinho/bitcoin-core bitcoin-cli --rpcconnect=oss.uia.no --rpcuser=uiacoin --stdinrpcpass getblockchaininfo
```

```sh
RPC password:  E5X-ZcDmTRl_jyjo345qYPWaQ7EB2GS5xcSFLhuLCOY=
```

### Notes:

1. Remember to install `bitcoin-cli` locally on your machines.
2. If you choose to run `bitcoin-cli` via Docker, you need to install Docker Desktop [(Installation guide)](https://docs.docker.com/get-docker/).
3. On Windows, the server address might need to be enclosed in quotation marks.

Relevant information can be found here: [Bitcoin Full Node Guide](https://bitcoin.org/en/full-node#what-is-a-full-node)

### Instructions:

1. To access the Bitcoin Core daemon on the server, use `bitcoin-cli` (Bitcoin command-line interface).
2. Test that `bitcoin-cli` is working by executing, for example:
   
   ```sh
   bitcoin-cli getblockchaininfo
   ```

---

## Bitcoin Core API

The Bitcoin Core client implements a JSON-RPC interface that can also be accessed using the command-line helper `bitcoin-cli`. The command line allows us to experiment interactively with the capabilities that are also available programmatically via the API.

The complete documentation of the RPCs that can be used with `bitcoin-cli`:

[Bitcoin RPC Reference](https://developer.bitcoin.org/reference/rpc/)

To start, invoke the help command to see a list of the available Bitcoin RPC commands:

```sh
bitcoin-cli help
```

For using Bitcoin Core running on the server, the corresponding command line is:

```sh
bitcoin-cli --rpcconnect=oss.uia.no --rpcuser=uiacoin --rpcpassword=E5X-ZcDmTRl_jyjo345qYPWaQ7EB2GS5xcSFLhuLCOY= help
```

Each of these commands may take a number of parameters. To get additional help for specific commands (e.g., information on the parameters), add the command name after `help`. For example, to see help on the `getblockhash` RPC command:

```sh
bitcoin-cli help getblockhash
```

---

## Report Content

The report must contain answers to the following questions:

### 1. Find state info regarding blockchain with `getblockchaininfo`:
   - a. Current number of blocks processed in the server?
   - b. Current number of headers that have to be validated?
   - c. Current difficulty?

### 2. Use the above to find the block hash for block height `222222`

### 3. Use the found block hash to look at this block (`getblock`) for info such as:
   - a. Next and previous block hashes?
   - b. Nonce?
   - c. Date and time when the block was created?
   - d. Difficulty?
   - e. Weight, height, and size?
   - f. Number of confirmations?
   - g. Number of transactions in the block?
   - h. Transaction(s) ID(s)?
   - i. Inputs and outputs (`vin` and `vout`) of transaction #0?

### 4. Use transaction ID for transaction #0 (from `getblock`) with `getrawtransaction` to explore transactions and retrieve:
   - a. Raw transaction serialized, hex-encoded raw string?
   - b. Object with information about `txid`?

### 5. Use `decoderawtransaction` to decode the raw transaction retrieved in the previous step and look at info such as:
   - a. Transaction hash?
   - b. Output value in BTC?
   - c. Locktime?
   - d. Output address(es)?
   - e. Output indexes?
   - f. Number of inputs and outputs?

