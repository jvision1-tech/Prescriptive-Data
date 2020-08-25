FROM alpine:3.10

RUN apk update

RUN apk add nginx
RUN mkdir -p /tmp/nginx/client-body

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
