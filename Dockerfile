# define a imagem base
FROM debian:bullseye
# define o mantenedor da imagem
LABEL maintainer="Oniichan"
RUN apt-get update && \
apt-get install -y openvpn \
easy-rsa \
ufw \
net-tools \
iptables \
systemctl \
procps \
&& rm -rf /var/lib/apt/lists/* 
COPY configure-openvpn.sh configure-openvpn.sh
# Instala o NGINX para testar
RUN chmod 777 configure-openvpn.sh

#CMD ./configure-openvpn.sh
CMD ["./configure-openvpn.sh"]
# Expoe a porta 80
EXPOSE 1194/udp
# Comando para iniciar o NGINX no Container
#CMD ["nginx", "-g", "daemon off;"]