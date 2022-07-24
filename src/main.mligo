let no_operation : operation list = []

type data = {token_id:nat;token_info:(string,bytes)map}
type tm = (nat, data) big_map 

type storage = {
   token_metadata : tm;
}

let get_token_metadata (token_id : nat) (tm : tm) =
   match Big_map.find_opt token_id tm with
      Some data -> data
   | None -> failwith "FA2_TOKEN_UNDEFINED"

type result = (operation list * storage)

let main (_p, s : unit * storage) : result =
  no_operation, s

[@view]
let token_metadata ((p, s) : (nat * storage))
: data =
  get_token_metadata p s.token_metadata
