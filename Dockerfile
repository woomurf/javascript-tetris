FROM nginx:alpine

COPY index.html /www/index.html
COPY stats.js /www/stats.js
COPY texture.jpg /www/texture.jpg

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD (tail -F /var/log/nginx/access.log &) && exec nginx -g "daemon off;"
