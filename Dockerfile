FROM openjdk:8-jre-alpine
EXPOSE 25565
VOLUME [ "/minecraft" ]

RUN addgroup minecraft && adduser -D -G minecraft minecraft

WORKDIR /minecraft

CMD ["/bin/sh", "run.sh"]
