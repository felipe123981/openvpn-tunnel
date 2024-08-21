#!/bin/bash
echo "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
echo "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
echo "XX                                                                          XX"
echo "XX   MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM   XX"
echo "XX   MMMMMMMMMMMMMMMMMMMMMssssssssssssssssssssssssssMMMMMMMMMMMMMMMMMMMMM   XX"
echo "XX   MMMMMMMMMMMMMMMMss'''                          '''ssMMMMMMMMMMMMMMMM   XX"
echo "XX   MMMMMMMMMMMMyy''                                    ''yyMMMMMMMMMMMM   XX"
echo "XX   MMMMMMMMyy''                                            ''yyMMMMMMMM   XX"
echo "XX   MMMMMy''                                                    ''yMMMMM   XX"
echo "XX   MMMy'                                                          'yMMM   XX"
echo "XX   Mh'                                                              'hM   XX"
echo "XX   -                                                                  -   XX"
echo "XX                                                                          XX"
echo "XX   ::                                                                ::   XX"
echo "XX   MMhh.        ..hhhhhh..                      ..hhhhhh..        .hhMM   XX"
echo "XX   MMMMMh   ..hhMMMMMMMMMMhh.                .hhMMMMMMMMMMhh..   hMMMMM   XX"
echo "XX   ---MMM .hMMMMdd:::dMMMMMMMhh..        ..hhMMMMMMMd:::ddMMMMh. MMM---   XX"
echo "XX   MMMMMM MMmm''      'mmMMMMMMMMyy.  .yyMMMMMMMMmm'      ''mmMM MMMMMM   XX"
echo "XX   ---mMM ''             'mmMMMMMMMM  MMMMMMMMmm'             '' MMm---   XX"
echo "XX   yyyym'    .              'mMMMMm'  'mMMMMm'              .    'myyyy   XX"
echo "XX   mm''    .y'     ..yyyyy..  ''''      ''''  ..yyyyy..     'y.    ''mm   XX"
echo "XX           MN    .sMMMMMMMMMss.   .    .   .ssMMMMMMMMMs.    NM           XX"
echo "XX           N'    MMMMMMMMMMMMMN   M    M   NMMMMMMMMMMMMM    'N           XX"
echo "XX            +  .sMNNNNNMMMMMN+   'N    N'   +NMMMMMNNNNNMs.  +            XX"
echo "XX              o+++     ++++Mo    M      M    oM++++     +++o              XX"
echo "XX                                oo      oo                                XX"
echo "XX           oM                 oo          oo                 Mo           XX"
echo "XX         oMMo                M              M                oMMo         XX"
echo "XX       +MMMM                 s              s                 MMMM+       XX"
echo "XX      +MMMMM+            +++NNNN+        +NNNN+++            +MMMMM+      XX"
echo "XX     +MMMMMMM+       ++NNMMMMMMMMN+    +NMMMMMMMMNN++       +MMMMMMM+     XX"
echo "XX     MMMMMMMMMNN+++NNMMMMMMMMMMMMMMNNNNMMMMMMMMMMMMMMNN+++NNMMMMMMMMM     XX"
echo "XX     yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMy     XX"
echo "XX   m  yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMy  m   XX"
echo "XX   MMm yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMy mMM   XX"
echo "XX   MMMm .yyMMMMMMMMMMMMMMMM     MMMMMMMMMM     MMMMMMMMMMMMMMMMyy. mMMM   XX"
echo "XX   MMMMd   ''''hhhhh       odddo          obbbo        hhhh''''   dMMMM   XX"
echo "XX   MMMMMd             'hMMMMMMMMMMddddddMMMMMMMMMMh'             dMMMMM   XX"
echo "XX   MMMMMMd              'hMMMMMMMMMMMMMMMMMMMMMMh'              dMMMMMM   XX"
echo "XX   MMMMMMM-               ''ddMMMMMMMMMMMMMMdd''               -MMMMMMM   XX"
echo "XX   MMMMMMMM                   '::dddddddd::'                   MMMMMMMM   XX"
echo "XX   MMMMMMMM-                                                  -MMMMMMMM   XX"
echo "XX   MMMMMMMMM                                                  MMMMMMMMM   XX"
echo "XX   MMMMMMMMMy                                                yMMMMMMMMM   XX"
echo "XX   MMMMMMMMMMy.                                            .yMMMMMMMMMM   XX"
echo "XX   MMMMMMMMMMMMy.                                        .yMMMMMMMMMMMM   XX"
echo "XX   MMMMMMMMMMMMMMy.                                    .yMMMMMMMMMMMMMM   XX"
echo "XX   MMMMMMMMMMMMMMMMs.                                .sMMMMMMMMMMMMMMMM   XX"
echo "XX   MMMMMMMMMMMMMMMMMMss.           ....           .ssMMMMMMMMMMMMMMMMMM   XX"
echo "XX   MMMMMMMMMMMMMMMMMMMMNo         oNNNNo         oNMMMMMMMMMMMMMMMMMMMM   XX"
echo "XX                                                                          XX"
echo "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
echo "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
echo -e '\n'
echo "    .o88o.                               o8o                ."
echo "    888 '*                               '*'              .o8"
echo "   o888oo   .oooo.o  .ooooo.   .ooooo.  oooo   .ooooo.  .o888oo oooo    ooo"
echo "    888    d88(  *8 d88' *88b d88* **Y8 *888  d88* *88b   888    '88.  .8'"
echo "    888    '*Y88b.  888   888 888        888  888ooo888   888     '88..8'"
echo "    888    o.  )88b 888   888 888   .o8  888  888    .o   888 .    '888'"
echo "   o888o   8**888P' 'Y8bod8P' 'Y8bod8P' o888o 'Y8bod8P'   *888*      d8'"
echo "                                                                .o...P'"
echo "                                                                'XER0'"
echo -e "\n"
echo -e "\n"
echo "                                                              http://0w.nz"
echo "                                                              http://xero.nu"
echo "                                                              http://fontvir.us"
sleep 2500
echo "[+] ===> Starting the VPN config... |>"
apt-get update && apt-get install openvpn easy-rsa ufw net-tools systemctl -yy
mkdir /easy-rsa
ln -s /usr/share/easy-rsa/* /easy-rsa/
cd /easy-rsa/
./easyrsa init-pki
echo "[+] ===> Generating Cert... |>"
./easyrsa build-ca nopass
./easyrsa build-server-full vpn_server nopass
./easyrsa sign-req server vpn_server
./easyrsa gen-dh
cd /easy-rsa/pki/
echo "[+] ===> Generating Criptografy... |>"
openvpn --genkey tls-crypt-v2-server private/vpn_server.pem
cd /etc/openvpn/server
echo '#-------------------- ' >> server.conf
echo '#VPN port' >> server.conf
echo 'port 1194' >> server.conf   
echo -e '\n'
echo '#VPN over UDP' >> server.conf  
echo 'proto udp' >> server.conf   
echo -e '\n'
echo '# "dev tun" will create a routed IP tunnel' >> server.conf
echo 'dev tun' >> server.conf
echo -e '\n'
echo 'ca ca.crt' >> server.conf
echo 'cert vpn_server.crt ' >> server.conf
echo 'key vpn_server.key   ' >> server.conf
echo 'tls-crypt-v2 vpn_server.pem ' >> server.conf
echo 'dh dh.pem ' >> server.conf
echo -e '\n'
echo '#network for the VPN   ' >> server.conf
echo 'server 10.8.0.0 255.255.255.0 ' >> server.conf
echo -e '\n'
echo 'push "redirect-gateway autolocal" ' >> server.conf
echo -e '\n'
echo '# Maintain a record of client <-> virtual IP address ' >> server.conf
echo -e '\n'
echo '# associations in this file.  ' >> server.conf
echo 'ifconfig-pool-persist /var/log/openvpn/ipp.txt' >> server.conf
echo -e '\n'
echo '# Ping every 10 seconds and assume client is down if ' >> server.conf
echo '# it receives no response in 120 seconds.' >> server.conf
echo 'keepalive 10 120 ' >> server.conf
echo -e '\n'
echo '#cryptographic cipher ' >> server.conf
echo 'cipher AES-256-GCM ' >> server.conf
echo -e '\n'
echo '#avoid accessing certain resources on restart ' >> server.conf
echo 'persist-key ' >> server.conf
echo 'persist-tun ' >> server.conf
echo -e '\n'
echo '#log of current connections  ' >> server.conf
echo 'status /var/log/openvpn/openvpn-status.log ' >> server.conf
echo -e '\n'
echo '#log verbose level (0-9) ' >> server.conf
echo 'verb 4 ' >> server.conf
echo -e '\n'
echo '# Notify the client when the server restarts ' >> server.conf
echo 'explicit-exit-notify 1 ' >> server.conf
echo '#-----------------------------------------' >> server.conf 
cd /easy-rsa/pki/
echo "[+] ===> Copying files... |>" 
cp ca.crt /etc/openvpn/server/
cp dh.pem /etc/openvpn/server/
cd /easy-rsa/pki/private/
cp vpn_server.key /etc/openvpn/server/
cp vpn_server.pem /etc/openvpn/server/
cd /easy-rsa/pki/issued/
cp vpn_server.crt /etc/openvpn/server/
apt-get install procps -yy
echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf
sysctl -p
echo "[+] ===> Done!"

INET_INTERFACE = "eth0" #ip route list default | cut -d ' ' -f 5 

echo "*nat" >> /etc/ufw/before.rules
echo ":POSTROUTING ACCEPT [0:0]" >> /etc/ufw/before.rules
echo "-A POSTROUTING -s 10.8.0.0/16 -o $INET_INTERFACE -j MASQUERADE" >> /etc/ufw/before.rules 
echo "COMMIT" >> /etc/ufw/before.rules
sed 's/DEFAULT_FORWARD_POLICY="DROP"/DEFAULT_FORWARD_POLICY="ACCEPT"/g' /etc/default/ufw
ufw allow 1194/udp
ufw disable
ufw enable
systemctl start openvpn-server@server.service
systemctl status openvpn-server@server.service