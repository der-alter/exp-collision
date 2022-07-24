#import "errors.mligo" "Errors"

type data = {token_id:nat;token_info:(string,bytes)map}
type t = (nat, data) big_map 

let get_token_metadata (token_id : nat) (tm : t) =
   match Big_map.find_opt token_id tm with
      Some data -> data
   | None -> failwith Errors.undefined_token
