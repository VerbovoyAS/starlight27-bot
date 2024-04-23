## Инструкция по запуску starlight27-bot

* Создать файл .env `build/local/.env.example > ./.env`
    ```bash 
    cp .env.example .env
    ```
* Проверить актуальность переменных окружения в build/local/.env 
* Запуск зависимостей
    ```bash 
    make up
    ```
* Запустить сервис
  ```bash 
    make run
    ```


### Миграции
Утилита для работы с миграциями [golang-migrate](https://github.com/golang-migrate/migrate/tree/master)

Пример создания новой миграции
```bash
migrate create -ext sql -dir build/app/migrations create-schedule
```
Пример применения новых миграций локально:
```bash
migrate -database 'postgres://postgres:postgres@127.0.0.1:5432/postgres?sslmode=disable' -path ./build/app/migrations up
```
