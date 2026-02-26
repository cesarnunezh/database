.DEFAULT_GOAL := help

help:
	@echo "Available targets:"
	@echo "  up      - start postgres"
	@echo "  down    - stop postgres"
	@echo "  migrate - apply schema/migrations"

up:
	docker compose -f docker-compose.yml up -t cesarnunezh/database -d 

down:
	docker compose -f docker-compose.yml down --rmi "all"

migrate:
	scripts/migrate