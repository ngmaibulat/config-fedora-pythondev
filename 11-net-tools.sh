sudo dnf -y install nmap
sudo dnf -y install hping3
sudo dnf -y install swaks

sudo snap install ngrok


echo "" >> ~/.bashrc
echo 'export PATH="/var/lib/snapd/snap/bin:$PATH"' >> ~/.bashrc
echo "" >> ~/.bashrc


wget -O mkcert https://github.com/FiloSottile/mkcert/releases/download/v1.4.4/mkcert-v1.4.4-linux-amd64
chmod +x  mkcert
mv mkcert .local/bin
