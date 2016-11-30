FROM bde2020/hadoop-base:1.1.0-hadoop2.7.1-java8
MAINTAINER Ivan Ermilov <ivan.s.ermilov@gmail.com>

ENV APACHE_SPARK_VERSION 2.0.0
ENV APACHE_HADOOP_VERSION 2.7.1

RUN set -x \
    && curl -fSL "https://dl.dropboxusercontent.com/u/4882345/spark-notebook/spark-notebook-0.7.0-scala-2.11.8-spark-2.0.0-hadoop-2.7.1-with-hive.tar.gz" -o /tmp/spark-notebook.tar.gz \
    && gunzip /tmp/spark-notebook.tar.gz \
    && tar -xzvf /tmp/spark-notebook.tar -C /opt/ \
    && mv /opt/spark-notebook-* /opt/spark-notebook \
    && rm /tmp/spark-notebook.tar

COPY run.sh /run.sh
RUN chmod a+x /run.sh

WORKDIR /opt/spark-notebook/

CMD ["/run.sh"]
