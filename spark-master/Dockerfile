FROM earthquakesan/hadoop-spark:1.6.2-hadoop2.6-hive
MAINTAINER Ivan Ermilov <ivan.s.ermilov@gmail.com>

ADD spark-master-entrypoint.sh /spark-master-entrypoint.sh
RUN chmod a+x /spark-master-entrypoint.sh

ENTRYPOINT ["/spark-master-entrypoint.sh"]
