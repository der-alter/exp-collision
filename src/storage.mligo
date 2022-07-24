#import "token_metadata.mligo" "TokenMetadata"

type 'a t = {
   token_metadata : TokenMetadata.t;
   extension : 'a;
}
