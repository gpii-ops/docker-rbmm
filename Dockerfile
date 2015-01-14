FROM inclusivedesign/java:openjdk-7

ADD . /rbmm

RUN yum -y install maven tomcat \
&& cd /rbmm \
&& cp start.sh /usr/local/bin/ \
&& chmod +x /usr/local/bin/start.sh \
&& sed -i 's/PERFORM_INTEGRATION_TESTS=true/PERFORM_INTEGRATION_TESTS=false/' src/main/webapp/WEB-INF/config.properties \
&& mvn clean install \
&& cp target/CLOUD4All_RBMM_Restful_WS.war /usr/share/tomcat/webapps/ \
&& rm -fr /rbmm \
&& yum -y autoremove maven \
&& yum clean all

EXPOSE 8080

CMD ["/usr/local/bin/start.sh"]
