# define a imagem base
FROM debian:latest
# define o mantenedor da imagem
LABEL maintainer="Oniichan"
RUN mkdir /easy-rsa
RUN cd /easy-rsa
RUN apt-get update && apt-get install openvpn easy-rsa ufw net-tools systemctl procps -yy
COPY configure-openvpn.sh configure-openvpn.sh
# Instala o NGINX para testar
RUN chmod 777 configure-openvpn.sh

CMD ./configure-openvpn.sh
# Expoe a porta 80
EXPOSE 1194
# Comando para iniciar o NGINX no Container
#CMD ["nginx", "-g", "daemon off;"]