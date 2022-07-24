#import "token_metadata.mligo" "TokenMetadata"
#import "storage.mligo" "Storage"

let no_operation : operation list = []

type storage = Storage.t

type result = (operation list * storage)

let main (_p, s : unit * storage) : result =
  no_operation, s

[@view]
let token_metadata ((p, s) : (nat * storage))
: TokenMetadata.data =
  TokenMetadata.get_token_metadata p s.token_metadata
