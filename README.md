# Docker for Spark Notebook

Docker image for Spark Notebook

Example usage:
```
version: "2"
services:
  spark-notebook:
    image: bde2020/hadoop-spark-notebook:2.1.0-hadoop2.8-hive
    container_name: spark-notebook
    environment:
      - NOTEBOOKS_DIR=/data/notebooks
    env_file:
      - ./hadoop.env
    ports:
      - 9001:9001
```

## Note
For Spark docker see [BDE repository](https://github.com/big-data-europe/docker-spark)
