from pytezos import ContractInterface, pytezos

contract_michelson = ""
with open("compiled/collision.tz") as file_handler:
    for line in file_handler:
        contract_michelson += line

contract = ContractInterface.from_michelson(contract_michelson)
