FROM earthquakesan/hadoop-spark:1.6.2-hadoop2.6-hive
MAINTAINER Ivan Ermilov <ivan.s.ermilov@gmail.com>

ADD spark-worker-entrypoint.sh /spark-worker-entrypoint.sh
RUN chmod a+x /spark-worker-entrypoint.sh

ENTRYPOINT ["/spark-worker-entrypoint.sh"]
