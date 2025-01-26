#!make

help: _header
	${info }
	@echo Opciones:
	@echo ----------------------
	@echo start / stop / restart
	@echo clean
	@echo ----------------------

_header:
	@echo ------------
	@echo Stirling PDF
	@echo ------------

_urls: _header
	${info }
	@echo ------------------------------------
	@echo [Stirling PDF] http://localhost:8080
	@echo ------------------------------------

_start-command:
	@docker compose up -d --remove-orphans

start: _header _start-command _urls

stop:
	@docker compose stop

restart: stop start

clean:
	@docker compose down -v --remove-orphans
