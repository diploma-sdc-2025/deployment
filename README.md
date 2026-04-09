How to run the app

### 1. Environment file

Copy `.env.example` → `.env` in this folder and fill in values.

### 2a. Azure PostgreSQL (original setup)

Services build a JDBC URL like  
`jdbc:postgresql://<DB_SERVER>.postgres.database.azure.com:<DB_PORT>/<DB_NAME>`.

- **`DB_SERVER`** must be your **real** Azure server name (the part **before** `.postgres.database.azure.com`).
- If you see `UnknownHostException: …postgres.database.azure.com`, the host does not exist or is a placeholder (e.g. `autochess-db-server`). Fix `DB_SERVER` / network / firewall for Azure.

```bash
docker compose build
docker compose up
```

### 2b. Local PostgreSQL (no Azure)

Uses `docker-compose.local.yml`: Postgres container + `SPRING_DATASOURCE_URL` so apps skip the Azure hostname.

1. Set `.env` for local DB (see `.env.example` — `AUTH_DB_NAME=auth`, etc., must match `docker/init-databases.sql`).
2. Run:

```bash
docker compose -f docker-compose.yml -f docker-compose.local.yml up --build
```

### Repo layout (original instructions)

1. Create an empty folder, inside it create 5 folders, each named like the services in github.
2. Clone each repo to each folder
3. Create the 6th folder, named deployement and clone this repo
4. Add `.env` to **deployement** with all required variables (see `.env.example`).
