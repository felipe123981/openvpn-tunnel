# define a imagem base
FROM debian:latest
# define o mantenedor da imagem
LABEL maintainer="Oniichan"
RUN mkdir /easy-rsa
CMD cd /easy-rsa
# Atualiza a imagem com os pacotes
COPY configure-openvpn.sh configure-openvpn.sh
# Instala o NGINX para testar
RUN chmod 777 configure-openvpn.sh

RUN ./configure-openvpn.sh
# Expoe a porta 80
EXPOSE 22
# Comando para iniciar o NGINX no Container
#CMD ["nginx", "-g", "daemon off;"]