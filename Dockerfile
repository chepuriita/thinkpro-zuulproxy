FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD target/thinkpro-zuulproxy-0.0.1-SNAPSHOT.jar thinkpro-zuulproxy.jar
RUN sh -c 'touch /thinkpro-zuulproxy.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/thinkpro-zuulproxy.jar"]
EXPOSE 8888