# Database

PostgreSQL schema and local infrastructure.

## Local Development
- Start DB: `docker compose -f infra/docker-compose.yml up -d`
- Apply schema: `scripts/migrate`

## Docker
- Build: `docker build -t database:local .`

## Git Flow
See `docs/git-flow.md`.

## Jenkins
See Jenkinsfile for CI pipeline.

## Design Decisions
See docs/decisions.md.
