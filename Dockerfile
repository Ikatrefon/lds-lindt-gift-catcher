FROM nginx:alpine
COPY . /usr/share/nginx/html
# warianty = ten sam plik pod innymi adresami (JS wykrywa ścieżkę):
#   /nomusic.html = bez muzyki tła · /piano.html = podkład fortepianowy
#   /piano-intro.html = fortepian od ekranu startowego + duck w odliczaniu
#   /piano-tap.html   = jw. + ekran „Tap to Start" (muzyka gra już na ekranie startowym)
RUN cp /usr/share/nginx/html/index.html /usr/share/nginx/html/nomusic.html \
 && cp /usr/share/nginx/html/index.html /usr/share/nginx/html/piano.html \
 && cp /usr/share/nginx/html/index.html /usr/share/nginx/html/piano-intro.html \
 && cp /usr/share/nginx/html/index.html /usr/share/nginx/html/piano-tap.html
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
