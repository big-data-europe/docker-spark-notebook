up:
	docker network create spark-net
	docker-compose build
	docker-compose up

down:
	docker-compose down
	docker network rm spark-net
