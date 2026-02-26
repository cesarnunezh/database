.DEFAULT_GOAL := help

help:
	@echo "Available targets:"
	@echo "  up      - start postgres"
	@echo "  down    - stop postgres"
	@echo "  migrate - apply schema/migrations"
	@echo "  build   - build docker image"

up:
	docker compose -f infra/docker-compose.yml up -d

down:
	docker compose -f infra/docker-compose.yml down

migrate:
	scripts/migrate

build:
	docker build -t database:local .
