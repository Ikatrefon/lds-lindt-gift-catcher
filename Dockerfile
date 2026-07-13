FROM nginx:alpine
COPY . /usr/share/nginx/html
# wersja BEZ muzyki = ten sam plik pod /nomusic.html (JS wykrywa ścieżkę i wyłącza muzykę tła)
RUN cp /usr/share/nginx/html/index.html /usr/share/nginx/html/nomusic.html
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
