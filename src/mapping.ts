import { BigInt } from "@graphprotocol/graph-ts"
import {
  TheShareItNetwork,
  ShareCall
} from "../generated/TheShareItNetwork/TheShareItNetwork"
import { Share } from "../generated/schema"

export function handleShareIt(call: ShareCall): void {
  let id = call.transaction.hash.toHex()
  let share = new Share(id)
  share.sender = call.from
  share.receiver = call.inputs.receiver
  share.appId = call.inputs.appId
  share.shareType = call.inputs.shareType
  share.shareData = call.inputs.data
  share.save()
}
