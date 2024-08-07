docker compose stop
docker compose up -d
docker exec -it 2be846c7bab1  psql -U postgres -d postgres -c "DROP DATABASE devtraining;"
docker exec -it 2be846c7bab1  psql -U postgres -d postgres -c "CREATE DATABASE devtraining;"
yarn run build
npx typeorm migration:run -d dist/database/orm-cli-config.js