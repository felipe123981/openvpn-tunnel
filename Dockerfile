# define a imagem base
FROM debian:11.5
# define o mantenedor da imagem
LABEL maintainer="Oniichan"
RUN apt-get update && apt-get install openvpn=2.5.1 easy-rsa=3.0.8 ufw net-tools systemctl procps -yy
COPY configure-openvpn.sh configure-openvpn.sh
# Instala o NGINX para testar
RUN chmod 777 configure-openvpn.sh

#CMD ./configure-openvpn.sh
ENTRYPOINT ["./configure-openvpn.sh"]
# Expoe a porta 80
EXPOSE 1194
# Comando para iniciar o NGINX no Container
#CMD ["nginx", "-g", "daemon off;"]