# The ShareIt Network
Smart Contract and subgraph for The ShareIt Network

Deployed to Kovan Testnet: `0x6E8c5AFd3CFf5f6Ec85c032B68eF2997323a00FD` block `25176330`

Available as subgraph on The Graph: https://thegraph.com/explorer/subgraph/michielpost/the-shareit-network


## Generic Data Sharing for dApps
The smart contract allows for easy data sharing or notifications within a dApp. 

If you have a small amount of data to share, you can put it directly into the smart contract. But it's advised to put the shared data on storage (for example IPFS or Sia Skynet) and share the URL / location of the shared data.

Call the `share` methods of the smart contract with the following inputs:
- `receiver` Ethereum address you want to share this data with
- `appId` unique appId to filter shares only relevant for your dApp
- `shareType` (optional) can be used to differentiate between different shares within your dApp
- `data` small amount of data or url to data location

All shares are indexed using The Graph and available to dApps using GraphQL.
https://thegraph.com/explorer/subgraph/michielpost/the-shareit-network

### Deploy to The Graph

Make sure you are authorized:
`graph auth https://api.thegraph.com/deploy/ [TOKEN]`

```
graph codegen 
graph deploy --node https://api.thegraph.com/deploy/ --ipfs https://api.thegraph.com/ipfs/ michielpost/the-shareit-network
```

## Acknowledgements
Development has been made possible with a grant from [The Graph](https://thegraph.com/blog/wave-one-funding).