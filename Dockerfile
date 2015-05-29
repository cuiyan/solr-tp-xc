# VERSION       1.0

# use the cui base image provided by yimiyancui
FROM index.alauda.cn/yimiyan/solr-td

MAINTAINER yimiyancui@163.com

# start service
RUN cd /data/; wget  --no-check-certificate  https://github.com/cuiyan/solr-tp-xc/blob/master/solrData/solr.tar.gz
RUN cd /data/; rm -rf solr
RUN cd /data ; tar -zvxf solr.tar.gz


# expose memcached port
EXPOSE 80
EXPOSE 22

CMD   (sh /usr/local/tomcat8081/bin/startup.sh ) && (tail -f /usr/local/tomcat8081/logs/catalina.out)
