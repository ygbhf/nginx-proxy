FROM nginx:latest
MAINTAINER YJK <mi@yjk.im>


RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD conf.d/ /etc/nginx/conf.d/
ADD web/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
