#import "token_metadata.mligo" "TokenMetadata"
#import "storage.mligo" "Storage"

let no_operation : operation list = []

type extension = {metadata : (string, bytes) big_map}

type storage = Storage.t

type extended_storage = extension storage

type result = (operation list * extended_storage)

let main (_p, s : string * extended_storage) : result =
  no_operation, s

[@view]
let token_metadata ((p, s) : (nat * extended_storage))
: TokenMetadata.data =
  TokenMetadata.get_token_metadata p s.token_metadata
