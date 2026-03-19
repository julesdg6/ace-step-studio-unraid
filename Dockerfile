FROM nginx:alpine

RUN apk add --no-cache bash gettext

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY ui/ /usr/share/nginx/html/
COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
