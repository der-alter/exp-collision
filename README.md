# exp-collision

Run `python3 collision.py` to see the error.

You should get this trace:

```sh
Traceback (most recent call last):
  File "/home/steven/code/exp-collision/collision.py", line 9, in <module>
    contract = ContractInterface.from_michelson(contract_michelson)
  File "/home/steven/.local/lib/python3.10/site-packages/pytezos/contract/interface.py", line 126, in from_michelson
    return ContractInterface.from_micheline(michelson_to_micheline(source), context)
  File "/home/steven/.local/lib/python3.10/site-packages/pytezos/contract/interface.py", line 148, in from_micheline
    return cls(context)
  File "/home/steven/.local/lib/python3.10/site-packages/pytezos/contract/interface.py", line 74, in __init__
    assert not hasattr(self, view_name), f'View name collision {view_name}'
AssertionError: View name collision token_metadata
```

It happens because the contract has a view named `token_metadata`.
