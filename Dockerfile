FROM eclipse-temurin:21-jre-ubi9-minimal

ARG VERSION="unknown"

COPY build/libs/chameleon-${VERSION}.jar /opt/app.jar

LABEL org.opencontainers.image.version=${VERSION}

EXPOSE 8080
EXPOSE 9080

ENTRYPOINT [ "java","-jar","/opt/app.jar" ]