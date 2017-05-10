up:
	docker network create spark-net
	docker-compose build
	docker-compose up

down:
	docker-compose down
	docker network rm spark-net

restart:
	docker stop dockersparknotebook_spark-notebook_1 && docker rm dockersparknotebook_spark-notebook_1
	docker-compose build
	docker-compose up -d spark-notebook

bash:
	docker exec -it dockersparknotebook_spark-notebook_1 bash

run:
	docker build -t spark-notebook ./spark-notebook/.
	docker run -it --rm -v $(shell pwd)/data/.m2:/root/.m2 -v $(shell pwd)/data/.ivy2:/root/.ivy2 --net spark-net -p 9000:9000 spark-notebook /bin/bash
