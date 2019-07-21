FROM openjdk:11-jre-alpine
EXPOSE 25565
VOLUME [ "/minecraft" ]

RUN addgroup -S minecraft && adduser -S -G minecraft minecraft
RUN chown minecraft:minecraft /minecraft

WORKDIR /minecraft
USER minecraft

CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]
