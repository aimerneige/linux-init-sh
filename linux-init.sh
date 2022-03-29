#############################################################
#     _    _                       _   _      _             #
#    / \  (_)_ __ ___   ___ _ __  | \ | | ___(_) __ _  ___  #
#   / _ \ | | '_ ` _ \ / _ \ '__| |  \| |/ _ \ |/ _` |/ _ \ #
#  / ___ \| | | | | | |  __/ |    | |\  |  __/ | (_| |  __/ #
# /_/   \_\_|_| |_| |_|\___|_|    |_| \_|\___|_|\__, |\___| #
#                                               |___/       #
#      _____        _                   _____ _  _          #
#     |  ___|__  __| | ___  _ __ __ _  |___ /| || |         #
#     | |_ / _ \/ _` |/ _ \| '__/ _` |   |_ \| || |_        #
#     |  _|  __/ (_| | (_) | | | (_| |  ___) |__   _|       #
#     |_|  \___|\__,_|\___/|_|  \__,_| |____/   |_|         #
#      ___       _ _     ____            _       _          #
#     |_ _|_ __ (_) |_  / ___|  ___ _ __(_)_ __ | |_        #
#      | || '_ \| | __| \___ \ / __| '__| | '_ \| __|       #
#      | || | | | | |_   ___) | (__| |  | | |_) | |_        #
#     |___|_| |_|_|\__| |____/ \___|_|  |_| .__/ \__|       #
#                                         |_|               #
#############################################################

set -e

if [[ $EUID != 0 ]]; then
    echo "You must run this script with `sudo` or use `sudo -s`."
    exit 1
fi

# Proxy Settings
# export all_proxy=socks5://127.0.0.1:1080
# export no_proxy="localhost, 127.0.0.1, *.baidu.com"

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
dnf install aira2 -y
dnf install ncdu -y
# lazygit
dnf copr enable atim/lazygit -y
dnf install lazygit -y
# github-cli
dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
dnf install gh -y

# git & config
dnf install git -y
git config --global user.name AimerNeige
git config --global user.email aimer.neige.soft@gmail.com
# git proxy
# git config --global http.proxy socks5://127.0.0.1:1080
# git config --global https.proxy socks5://127.0.0.1:1080

# cheat.sh
curl https://cht.sh/:cht.sh | tee /usr/local/bin/cht.sh
chmod +x /usr/local/bin/cht.sh

# install & config zsh
dnf install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/aimerneige/zsh/master/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
dnf install starship -y

dnf install gcc -y
dnf install g++ -y
dnf install make -y
dnf install cmake -y

# Kitty
dnf install kitty -y
rm -rf $HOME/.config/kitty
git clone https://github.com/aimerneige/kitty.git $HOME/.config/kitty
# Alacritty
dnf install alacritty -y
rm -rf $HOME/.config/alacritty
git clone https://github.com/aimerneige/alacritty.git $HOME/.config/alacritty
# Cool Retro Term
dnf install cool-retro-term -y

# Software
dnf install gedit -y
# Steam
dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-34.noarch.rpm
dnf install steam -y
# Chrome
dnf install fedora-workstation-repositories
dnf config-manager --set-enabled google-chrome
dnf install google-chrome-stable -y
# rpm fusion
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-34.noarch.rpm
dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-34.noarch.rpm
# update again
dnf update -y
