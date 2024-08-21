OVPN_DATA="ovpn-data-example"
docker volume create --name ovpn-data-example
docker run -v ovpn-data-example:/etc/openvpn --rm kylemanna/openvpn ovpn_genconfig -u udp://localhost
docker run -v ovpn-data-example:/etc/openvpn --rm -it kylemanna/openvpn ovpn_initpki
docker run -v ovpn-data-example:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn
docker run -v ovpn-data-example:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient localhost > CLIENTNAME.ovpn
docker run -v ovpn-data-example:/etc/openvpn -p 1194:1194/udp --cap-add=NET_ADMIN -e DEBUG=1 kylemanna/openvpn