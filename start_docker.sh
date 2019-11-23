#bin/bash
docker-compose up -d
./db_migrate.sh
./db_seed.sh
./run_tests.sh