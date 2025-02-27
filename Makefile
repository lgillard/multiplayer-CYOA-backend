# Variables
DOCKER_COMPOSE = docker compose
APP_CONTAINER = cyoa-app
DB_CONTAINER = cyoa-db
DB_NAME = root
DB_USER = root

# Colors for pretty output
CYAN = \033[0;36m
GREEN = \033[0;32m
YELLOW = \033[0;33m
NO_COLOR = \033[0m

.PHONY: help start stop restart clean logs psql build migrate status test

help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  ${CYAN}%-15s${NO_COLOR} %s\n", $$1, $$2}' $(MAKEFILE_LIST)

start: ## Start all services
	@echo "${GREEN}Starting services...${NO_COLOR}"
	@${DOCKER_COMPOSE} up -d

stop: ## Stop all services
	@echo "${YELLOW}Stopping services...${NO_COLOR}"
	@${DOCKER_COMPOSE} stop

restart: stop start ## Restart all services

clean: ## Stop and remove all containers, volumes
	@echo "${YELLOW}Cleaning up everything...${NO_COLOR}"
	@${DOCKER_COMPOSE} down -v

build: ## Rebuild and start all services
	@echo "${GREEN}Building and starting services...${NO_COLOR}"
	@${DOCKER_COMPOSE} up --build -d

logs: ## Show logs of all services
	@${DOCKER_COMPOSE} logs -f

logs-app: ## Show only application logs
	@${DOCKER_COMPOSE} logs -f ${APP_CONTAINER}

psql: ## Connect to PostgreSQL database
	@echo "${GREEN}Connecting to database...${NO_COLOR}"
	@docker exec -it ${DB_CONTAINER} psql -U ${DB_USER} -d ${DB_NAME}

migrate: ## Run database migrations
	@echo "${GREEN}Running migrations...${NO_COLOR}"
	@${DOCKER_COMPOSE} exec ${APP_CONTAINER} ./mvnw flyway:migrate

status: ## Check migration status
	@echo "${GREEN}Checking migration status...${NO_COLOR}"
	@${DOCKER_COMPOSE} exec ${APP_CONTAINER} ./mvnw flyway:info

test: ## Run tests
	@echo "${GREEN}Running tests...${NO_COLOR}"
	@${DOCKER_COMPOSE} exec ${APP_CONTAINER} ./mvnw test
