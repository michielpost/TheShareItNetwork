import { BigInt } from "@graphprotocol/graph-ts"
import {
  TheShareItNetwork,
  ShareIt
} from "../generated/TheShareItNetwork/TheShareItNetwork"
import { Share } from "../generated/schema"

export function handleShareIt(event: ShareIt): void {
  let share = new Share(event.transaction.hash.toHex())
  share.sender = event.params.sender
  share.receiver = event.params.receiver
  share.appId = event.params.appId
  share.shareType = event.params.shareType
  share.shareData = event.params.data
  share.save()
}