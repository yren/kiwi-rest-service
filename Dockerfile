FROM openjdk:8u151-jdk-alpine

RUN mkdir -p /rt/apps/
ADD *.jar /rt/apps/

EXPOSE 8081

CMD java -server -Xmx2500m -Xms1024m -jar /rt/apps/kiwi-rest-service-*.jar