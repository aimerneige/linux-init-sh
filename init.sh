set -e

# Proxy Settings
# export all_proxy=socks5://127.0.0.1:1080
# export no_proxy="localhost, 127.0.0.1, *.baidu.com"

sudo ./dnf-install.sh
./install-theme.sh
./install-flathub-package.sh
./setup-config.sh
