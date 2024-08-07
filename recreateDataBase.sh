docker compose stop
docker compose up -d
docker exec -it 45dd76412d8d psql -U postgres -d postgres -c "DROP DATABASE devtraining;"
docker exec -it 45dd76412d8d psql -U postgres -d postgres -c "CREATE DATABASE devtraining;"
pnpm run build
npx typeorm migration:run -d dist/database/orm-cli-config.js