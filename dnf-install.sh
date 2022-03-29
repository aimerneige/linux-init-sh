set -e

if [[ $EUID != 0 ]]; then
    echo "You must run this script with `sudo`."
    exit 1
fi

# Update
dnf update -y
# Workstation Softwares
dnf group install "Fedora Workstation" -y
# Terminal Tools
dnf install wget -y
dnf install curl -y
dnf install tree -y
dnf install figlet -y
dnf install neofetch -y
dnf install cowsay -y
dnf install htop -y
dnf install bpytop -y
dnf install ranger -y
dnf install vim -y
dnf install neovim -y
dnf install aria2 -y
dnf install ncdu -y
dnf install util-linux-user -y
dnf install zsh -y
dnf install starship -y
# lazygit
dnf copr enable atim/lazygit -y
dnf install lazygit -y
# github-cli
dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
dnf install gh -y
# git & config
dnf install git -y
# cheat.sh
curl https://cht.sh/:cht.sh | tee /usr/local/bin/cht.sh
chmod +x /usr/local/bin/cht.sh
# build
dnf install gcc -y
dnf install g++ -y
dnf install make -y
dnf install cmake -y
# Software
dnf install kitty -y
dnf install alacritty -y
dnf install cool-retro-term -y
dnf install gedit -y
dnf install gnome-tweak-tool -y
# rpm fusion
dnf install dnf-plugins-core -y
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
# Steam
dnf install steam -y
# Chrome
dnf install fedora-workstation-repositories -y
dnf config-manager --set-enabled google-chrome
dnf install google-chrome-stable -y
# update again
dnf update -y
