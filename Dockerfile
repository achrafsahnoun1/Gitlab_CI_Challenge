FROM nginx:stable-alpine3.17-slim
RUN rm -Rf /usr/share/nginx/html
COPY public/ /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
