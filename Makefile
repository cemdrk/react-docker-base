
.PHONY: up down shell logs

build:
	docker compose build --no-cache

up: down build
	docker compose up -d && make logs

down:
	docker compose down --rmi local --volumes --remove-orphans

logs:
	docker compose logs -f app

shell:
	docker compose exec app bash
