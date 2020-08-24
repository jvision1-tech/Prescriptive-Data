FROM alpine:3.10

RUN apk update

RUN apk add nginx
RUN mkdir -p /tmp/nginx/client-body
RUN mkdir -p /run/nginx

COPY nginx/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
