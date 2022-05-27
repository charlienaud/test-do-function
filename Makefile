# Misc
.DEFAULT_GOAL = help
.PHONY        = help deploy

## —— Makefile ————————————————————————————————————————————————————————————————
help: ## Outputs this help screen
	@grep -E '(^[a-zA-Z0-9_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

## —— DigitalOcean ————————————————————————————————————————————————————————————
deploy: ## Deploy all the functions in packages/*
	doctl serverless deploy .