#!/bin/bash

# Display Banner
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
sleep 10
echo "[+] ===> Starting the VPN config... |>"
mkdir -p /easy-rsa
ln -s /usr/share/easy-rsa/* /easy-rsa/
cd /easy-rsa/
./easyrsa init-pki
echo "[+] ===> Generating Cert... |>"
echo -e "\n" | ./easyrsa build-ca nopass
echo -e "yes\n" | ./easyrsa build-server-full vpn_server nopass
echo -e "yes\n" | ./easyrsa sign-req server vpn_server nopass
./easyrsa gen-dh
cd /easy-rsa/pki/
echo "[+] ===> Generating Cryptography... |>"
openvpn --genkey tls-crypt-v2-server private/vpn_server.pem
cat <<EOF > /etc/openvpn/server/server.conf
#-------------------- 
#VPN port
port 1194   

#VPN over UDP  
proto udp   

# "dev tun" will create a routed IP tunnel 
dev tun 

ca ca.crt 
cert vpn_server.crt 
key vpn_server.key   
tls-crypt-v2 vpn_server.pem 
dh dh.pem 

#network for the VPN   
server 10.8.0.0 255.255.255.0 

push "redirect-gateway autolocal" 

# Maintain a record of client <-> virtual IP address 

# associations in this file.  
ifconfig-pool-persist /var/log/openvpn/ipp.txt

# Ping every 10 seconds and assume client is down if 
# it receives no response in 120 seconds. 
keepalive 10 120 

#cryptographic cipher 
cipher AES-256-GCM 

#avoid accessing certain resources on restart 
persist-key 
persist-tun 

#log of current connections  
status /var/log/openvpn/openvpn-status.log 

#log verbose level (0-9) 
verb 4 

# Notify the client when the server restarts 
explicit-exit-notify 1 
#----------------------------------------- 
EOF

cd /easy-rsa/pki/
echo "[+] ===> Copying files... |>" 
cp ca.crt /etc/openvpn/server/
cp dh.pem /etc/openvpn/server/
#cp ta.key /etc/openvpn/server/
cd /easy-rsa/pki/private/
cp vpn_server.key /etc/openvpn/server/
cp vpn_server.pem /etc/openvpn/server/
cd /easy-rsa/pki/issued/
cp vpn_server.crt /etc/openvpn/server/

# Configure IP Forwarding
sed -i 's/#net.ipv4.ip_forward = 1/net.ipv4.ip_forward = 1/g' /etc/sysctl.conf
sysctl -p #w net.ipv4.ip_forward=1

# Configure UFW
cat <<EOF > /etc/ufw/before.rules
*nat
:POSTROUTING ACCEPT [0:0]
-A POSTROUTING -s 10.8.0.0/16 -o eth0 -j MASQUERADE
COMMIT
EOF

sed -i 's/DEFAULT_FORWARD_POLICY="DROP"/DEFAULT_FORWARD_POLICY="ACCEPT"/g' /etc/default/ufw
ufw allow 1194/udp
ufw disable
ufw enable

# Start OpenVPN Service
systemctl start openvpn-server@server.service
systemctl status openvpn-server@server.service
#systemctl enable openvpn-server@server.service

echo "[+] ===> Done!"
sleep 900000