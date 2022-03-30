FROM klakegg/hugo:0.95.0-ext-onbuild AS hugo
RUN ls /target

FROM nginx
RUN rm -rf /usr/share/nginx/html/*
COPY --from=hugo /target /usr/share/nginx/html
RUN ls /usr/share/nginx/html
