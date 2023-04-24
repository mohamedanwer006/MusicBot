FROM openjdk:19-jdk-alpine3.16 
WORKDIR /app
COPY config.txt /app/
COPY target/*-All.jar /app/
RUN mv  *-All.jar JMusicBot.jar
CMD [ "java", "-Dnogui=true" ,"-jar", "/app/JMusicBot.jar" ]

