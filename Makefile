ifndef LIGO
LIGO=docker run --rm -v "$(PWD)":"$(PWD)" -w "$(PWD)" ligolang/ligo:0.47.0
endif

compile = $(LIGO) compile contract ./src/$(1) -o ./compiled/$(2) $(3)

help:
	@grep -E '^[ a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

compile: ## compile contract
	@$(call compile,main.mligo,collision.tz)

install: ## install dependencies
	@poetry install
