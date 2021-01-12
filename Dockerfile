FROM ubuntu:21.04
RUN apt-get update -y \
&& apt-get install nginx -y 
EXPOSE 80/tcp
EXPOSE 22/tcp
STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
