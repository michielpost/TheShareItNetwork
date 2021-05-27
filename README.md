# The ShareIt Network
Smart Contract and subgraph for The ShareIt Network

Deployed to Kovan Testnet: `0x56b63bdD10AcD7f703a2E8eF519CdA8c5d66d56d` block `25096534`

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
