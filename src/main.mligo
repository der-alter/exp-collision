let no_operation : operation list = []

type storage = string
type result = (operation list * storage)

let main (_p, s : unit * storage) : result =
  no_operation, s

[@view]
let token_metadata ((_p, s) : (nat * storage))
: string = s
