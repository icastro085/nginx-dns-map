.PHONY: build
build:
	docker-compose build

.PHONY: start
start:
	docker-compose up -d

.PHONY: logs
logs:
	docker-compose logs -f

.PHONY: stop
stop:
	docker-compose down