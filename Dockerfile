FROM nginx:stable-alpine3.17-slim
WORKDIR /tmp
ARG DOWNLOADER
RUN apk add curl unzip
RUN eval $DOWNLOADER
RUN unzip artifact.zip 
RUN mv public/* /usr/share/nginx/html