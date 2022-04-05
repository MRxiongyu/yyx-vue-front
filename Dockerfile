FROM nginx
LABEL name='yyx-vue-front'
LABEL version='0.0.1'
COPY ./dist /usr/share/nginx/html
COPY .vue.conf /etc/nginx/default.d
EXPOSE 80