FROM openjdk:8

WORKDIR /SecureSparkApp/bin

ENV PORT 6000
ENV TZ America/Bogota

COPY /target/classes /SecureSparkApp/bin/classes
COPY /target/dependency /SecureSparkApp/bin/dependency
RUN mkdir keystores
COPY keystores/* /SecureSparkApp/bin/keystores/

CMD ["java","-cp","./classes:./dependency/*","com.arep.SparkWebServer"]