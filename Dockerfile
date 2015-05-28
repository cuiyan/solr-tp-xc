# VERSION       1.0

# use the cui base image provided by yimiyancui
FROM index.alauda.cn/yimiyan/solr-td

MAINTAINER yimiyancui@163.com

# start servicae
#RUN cd /usr/local/tomcat/webapps/ROOT/ ; wget http://apache.claz.org/lucene/solr/4.9.1/solr-4.9.1.zip 

#RUN cd /usr/local/tomcat/webapps/ROOT/ ; unzip solr-5.1.0.zip


# expose memcached port
EXPOSE 80


CMD   (sh /usr/local/tomcat8081/bin/startup.sh ) && (tail -f /usr/local/tomcat8081/logs/catalina.out)
