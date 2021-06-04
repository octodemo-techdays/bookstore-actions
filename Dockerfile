FROM jetty:9.4-jre11-slim

ARG REPOSITORY_NAME=octodemo/template-bookstore-v2
ARG VERSION=0.0.0-SNAPSHOT
ARG revision=unknown
ARG repo_url=http://github.com/${REPOSITORY_NAME}

# Default the server port if not specified
ARG SERVER_PORT
ENV SERVER_PORT=${SERVER_PORT:-8080}
EXPOSE ${SERVER_PORT}

# Copy the War file into the container as the / context
COPY target/bookstore.war /var/lib/jetty/webapps/ROOT.war

LABEL org.opencontainers.image.authors="GitHub Solutions Engineering" \
    org.opencontainers.image.url="${repo_url}" \
    org.opencontainers.image.documentation="${repo_url}/README.md" \
    org.opencontainers.image.source="${repo_url}" \
    org.opencontainers.image.version="${VERSION}" \
    org.opencontainers.image.revision="${revision}" \
    org.opencontainers.image.vendor="GitHub" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.title="GitHub Solutions Engineering Java Bookstore" \
    org.opencontainers.image.description="GitHub Demo Bookstore written in Java"