FROM eclipse-temurin:17-jre

WORKDIR /app

RUN wget -O server.jar https://launcher.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar
RUN echo "eula=true" > eula.txt

EXPOSE 25565

CMD ["java", "-Xmx512M", "-jar", "server.jar", "nogui"]
