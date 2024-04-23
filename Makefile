.PHONY: up down run

PROJECT_NAME=starlight-bot

# Docker
up:
	docker compose -p ${PROJECT_NAME} -f build/local/docker-compose.yml up -d

down:
	docker compose -p ${PROJECT_NAME} -f build/local/docker-compose.yml down

# Запуск приложения
run:
	bash -c 'set -a; . ./build/local/.env; set +a; go run cmd/starlight-bot/main.go'
