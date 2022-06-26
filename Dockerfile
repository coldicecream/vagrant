FROM sonarqube:community
USER root
RUN apk add --no-cache --upgrade 'zlib>=1.2.12-r1';
USER sonarqube
