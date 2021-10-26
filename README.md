Simple VPN with a pre-shared key

apt install git -y  
git clone https://github.com/joshimator/simplevpn  
cd simplevpn  
chmod +x vpnserver.sh  
chmod +x network.sh  
./network.sh  
./vpn.sh  
clone VM
cd simplevpn  
chmod +x vpnclient.sh  
./vpnclient.sh  