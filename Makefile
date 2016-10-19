
.PHONY: manage.py

help:
	@echo "dbshell                  Enter a SQL shell"
	@echo "help                     This help message"
	@echo "pyshell                  Enter local django shell"
	@echo "rebuild                  (Re)build docker dsparseyapi container"
	@echo "rebuild-all              (Re)build all docker containers"
	@echo "shell                    Enter local bash shell in dsparseyapi container"
	@echo "start                    Startup all docker containers - see the logs"
	@echo "stop                     Stop all docker-compose containers"

rebuild:
	# docker-compose build workers
	docker-compose build dsparseyapi

rebuild-all:
	docker-compose down
	docker-compose rm --all
	docker-compose build

start:
	docker-compose up

stop:
	docker-compose stop

up:
	make start

manage.py:
	docker-compose run dsparseyapi python manage.py $(filter-out $@,$(MAKECMDGOALS))


dbshell:
	docker-compose run dsparseyapi sh -c "apt-get install postgresql-client -y && PGPASSWORD=abcdEF123456 python manage.py dbshell"



# needed for manage.py but does hide command not found errors
%:
	@:
