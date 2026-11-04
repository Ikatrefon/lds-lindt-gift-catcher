FROM nginx:alpine
COPY . /usr/share/nginx/html
# warianty = ten sam plik pod innymi adresami (JS wykrywa ścieżkę):
#   /nomusic.html = bez muzyki tła · /piano.html = podkład fortepianowy
RUN cp /usr/share/nginx/html/index.html /usr/share/nginx/html/nomusic.html \
 && cp /usr/share/nginx/html/index.html /usr/share/nginx/html/piano.html
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
