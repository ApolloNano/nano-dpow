# ApolloNano's DPoW

<img src="static/logo.png" align="right" width="320" alt="DPoW"/></p>

[![Discord](https://img.shields.io/badge/discord-join%20chat-blue.svg)](https://discord.gg/TkDK4wEXJk)

Welcome to the Distributed Proof of Work (DPoW) system. The DPoW system allows any user to support ApolloNano by computing the required proof of work for transactions.

DPoW has helped reduce operating costs of projects, such as faucets, tipping bots, and wallets. As a reward for helping, clients get occasional Nano payouts.

## Why does this exist

In the [Nano](https://nano.org) protocol, every [block](https://medium.com/nano-education/nano-how-2-blocks-and-lattices-c0ccd417bd5a) must contain a small [proof of work](https://medium.com/nano-education/nano-how-4-proof-of-work-474bf20fc7d) to be confirmed by the network. While a desktop with a modern graphics card can easily and quickly compute this proof, the process can require significant resources from a server and mobile devices. Services often need to scale quickly when there is an uptick in usage, and on-demand scalable solutions based on GPUs are not available given the time-to-deploy requirements.

DPoW provides a **hub between services and clients who are happy to provide their resources**, in return for small payouts. Consequently, ApolloNano saves significantly on operating costs to operate on the Nano network.

## How does it work

ApolloNano request a proof of work for a specific block (hash). The server broadcasts a request using the low-latency MQTT protocol. The first worker (client) to return valid work is rewarded, and immediately a message is sent so other clients know they can cancel the ongoing computation. Meanwhile, the work is returned to the service.

## Using DPoW

### Documentation

You can read more about the DPoW [message specification](docs/specification.md).

### Running a work client

Read more on the [client documentation](client/README.md) page.

### Credit

The orginal DPoW project ApolloNano adapted for its services can be found [here](https://github.com/guilhermelawless/nano-dpow)
