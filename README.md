## Laravel + Docker

This docker compose configuration will bring up 3 docker containers.
- `docker-web` http://localhost:4000
- `docker-db` most basic Postgres container.
- `docker-redis` most basic Redis container.

To bring up: `./start_docker.sh` Brings up containers, migrates and seeds DB and runs unit tests.

To Terminate: `./stop_docker.sh` Kills containers and prunes docker volumes

To migrate db: `./db_migrate.sh`

To seed db: `./db_seed.sh`

To run unit tests: `./run_tests.sh`

To open a shell on the web container `./web_terminal.sh`
