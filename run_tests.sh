#bin/bash
docker exec -it docker-web vendor/bin/phpunit --configuration phpunit.xml --coverage-text --colors=never