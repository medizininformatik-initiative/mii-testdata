SHELL := /bin/bash
.DEFAULT_GOAL := help

COMPOSE := docker compose -f docker-compose.yml
SCRIPTS := ./scripts
TESTS := ./tests

BUNDLES_DIR ?= ../kds-testdata/fsh-generated/resources
LOCK_FILE ?= ../kds-testdata/fhirpkg.lock.json
SP_DIR ?= ./_searchparameters

HAPI_URL := http://localhost:8080/fhir
BLAZE_URL := http://localhost:8082/fhir

.PHONY: help
help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-25s\033[0m %s\n", $$1, $$2}'

# --- Docker ---

.PHONY: start-hapi
start-hapi: ## Start HAPI FHIR server
	$(COMPOSE) up -d hapi
	$(SCRIPTS)/wait-for-server.sh hapi $(HAPI_URL) 180

.PHONY: start-blaze
start-blaze: ## Start Blaze FHIR server
	$(COMPOSE) up -d blaze
	$(SCRIPTS)/wait-for-server.sh blaze $(BLAZE_URL) 120

.PHONY: start-all
start-all: start-hapi start-blaze ## Start all FHIR servers

.PHONY: stop
stop: ## Stop all containers
	$(COMPOSE) down -v

# --- SearchParameters ---

.PHONY: extract-sp
extract-sp: ## Extract SearchParameters from FHIR package cache
	$(SCRIPTS)/extract-searchparameters.sh $(LOCK_FILE) $(SP_DIR)

# --- Load Data ---

.PHONY: load-hapi
load-hapi: extract-sp ## Load SPs + Bundles into HAPI
	$(SCRIPTS)/load-searchparameters.sh $(HAPI_URL) $(SP_DIR)
	$(SCRIPTS)/load-bundles.sh $(HAPI_URL) $(BUNDLES_DIR)

.PHONY: load-blaze
load-blaze: extract-sp ## Load SPs + Bundles into Blaze
	$(SCRIPTS)/load-searchparameters.sh $(BLAZE_URL) $(SP_DIR)
	$(SCRIPTS)/load-bundles.sh $(BLAZE_URL) $(BUNDLES_DIR)

# --- Tests ---

.PHONY: test-hapi
test-hapi: ## Run SearchParameter tests against HAPI
	FHIR_BASE_URL=$(HAPI_URL) FHIR_SERVER_NAME=hapi \
		python -m pytest $(TESTS) -v --tb=short --junitxml=results-hapi.xml

.PHONY: test-blaze
test-blaze: ## Run SearchParameter tests against Blaze
	FHIR_BASE_URL=$(BLAZE_URL) FHIR_SERVER_NAME=blaze \
		python -m pytest $(TESTS) -v --tb=short --junitxml=results-blaze.xml

# --- Full Workflows ---

.PHONY: run-hapi
run-hapi: start-hapi load-hapi test-hapi ## Full workflow: start HAPI, load, test

.PHONY: run-blaze
run-blaze: start-blaze load-blaze test-blaze ## Full workflow: start Blaze, load, test

.PHONY: run-all
run-all: run-hapi run-blaze ## Full workflow for both servers

.PHONY: clean
clean: stop ## Clean up containers and extracted SPs
	rm -rf $(SP_DIR) results-*.xml
