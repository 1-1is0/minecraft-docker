FROM openjdk:jdk-oraclelinux8
RUN mkdir /app
WORKDIR /app
RUN curl -L https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar -o server.jar

RUN echo "eula=true" > eula.txt


COPY server.properties server.properties

EXPOSE 25575
EXPOSE 19132


CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]