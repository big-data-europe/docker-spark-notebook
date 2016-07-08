FROM bde2020/hadoop-base:1.0.0
MAINTAINER Ivan Ermilov <ivan.s.ermilov@gmail.com>

ENV SPARK_VERSION 1.6.2
ENV SPARK_URL https://dl.dropboxusercontent.com/u/4882345/packages/spark-1.6.2-bin-hadoop2.6-hive.tgz
RUN set -x \
    && curl -fSL "$SPARK_URL" -o /tmp/spark.tar.gz \
    #&& curl -fSL "$SPARK_URL.asc" -o /tmp/spark.tar.gz.asc \
    #&& gpg --verify /tmp/spark.tar.gz.asc \
    && tar -xvf /tmp/spark.tar.gz -C /opt/ \
    && rm /tmp/spark.tar.gz*

ENV SPARK_HOME=/opt/spark-$SPARK_VERSION
RUN mv /opt/spark-$SPARK_VERSION-* $SPARK_HOME

WORKDIR $SPARK_HOME
ENV PATH $SPARK_HOME/bin:$PATH

ADD spark-entrypoint.sh /
RUN chmod a+x /spark-entrypoint.sh

ADD runhistoryserver.sh /
RUN chmod a+x /runhistoryserver.sh

RUN echo "export SPARK_DIST_CLASSPATH=$(hadoop classpath)" >> /opt/spark-$SPARK_VERSION/conf/spark-env.sh

ENTRYPOINT ["/spark-entrypoint.sh"]
CMD ["/runhistoryserver.sh"]
