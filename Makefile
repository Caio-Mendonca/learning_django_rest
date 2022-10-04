clean:
	sudo find . -name "*.pyc" -delete
	sudo find . -name "*.pyo" -delete

# Initialize your local database
psql-up: clean
	sudo docker-compose -f .docker/docker-compose.yml up -d --build --force-recreate --remove-orphans db

psql-down: clean
	sudo docker-compose -f .docker/docker-compose.yml down -v --remove-orphans
	