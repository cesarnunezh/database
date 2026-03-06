.DEFAULT_GOAL := help

help:
	@echo "Available targets:"
	@echo "  setup   - setup placeholder"
	@echo "  lint    - lint placeholder"
	@echo "  test    - test placeholder"
	@echo "  scan    - run security scan placeholder"
	@echo "  build   - build docker image"

setup:
	@echo "No setup step required for database image"

lint:
	@echo "No linter configured for database repo yet"

test:
	@echo "No automated tests configured for database repo yet"

scan:
	@echo "No security scanner configured yet for database repo"

build:
	docker build -t database-service:ci-local .
