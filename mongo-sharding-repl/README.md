# pymongo-api

## Как запустить
cd mongo-sharding-repl

Запускаем mongodb и приложение

```shell
docker compose up --build -d
```

Настраиваем mongodb

bash ./scripts/mongo-init-configSrv.sh
bash ./scripts/mongo-init-shard1.sh
bash ./scripts/mongo-init-shard2.sh
bash ./scripts/mongo-init-router.sh

## Как проверить

Откройте в браузере http://localhost:8080

## Доступные эндпоинты

Список доступных эндпоинтов, swagger http://<ip виртуальной машины>:8080/docs