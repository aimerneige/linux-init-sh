set -e

wget https://go.dev/dl/go1.18.linux-amd64.tar.gz -O /tmp/go1.18.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf /tmp/go1.18.linux-amd64.tar.gz
