set -e

echo "====== Start Install Oracle VM VirtualBox ======"

sudo rpm --import https://www.virtualbox.org/download/oracle_vbox.asc

cat <<EOF | sudo tee /etc/yum.repos.d/virtualbox.repo
[virtualbox]
name=Oracle VM VirtualBox
baseurl=http://download.virtualbox.org/virtualbox/rpm/fedora/34/x86_64
enabled=1
gpgcheck=1
gpgkey=https://www.virtualbox.org/download/oracle_vbox.asc
EOF

sudo dnf check-update
sudo dnf install VirtualBox-6.1 -y

echo "====== Oracle VM VirtualBox Installed ======"
