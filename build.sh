#!/usr/bin/env bash
rm cv.html style.css
docker run --rm --name pandoc-builder -tid -v "$(pwd)":/tmp edwinek/alpine-git-pandoc:3.8 sh
docker exec -ti pandoc-builder sh -c "git clone https://gist.github.com/971535c06dbcbe9ea80aff39278f6111.git /opt/pandoc-css"
docker exec -ti --user $(id -u):$(id -g) pandoc-builder sh -c "cd /tmp && cp /opt/pandoc-css/github-pandoc.css style.css && pandoc cv.md -f markdown-auto_identifiers -s -c style.css -o cv.html"
docker stop pandoc-builder
