FROM nginx:alpine
COPY dist/ /usr/share/nginx/html/
COPY sitemap.xml /usr/share/nginx/html/sitemap.xml
COPY robots.txt /usr/share/nginx/html/robots.txt
EXPOSE 80
