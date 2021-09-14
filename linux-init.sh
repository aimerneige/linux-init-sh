#############################################################
#     _    _                       _   _      _             #
#    / \  (_)_ __ ___   ___ _ __  | \ | | ___(_) __ _  ___  #
#   / _ \ | | '_ ` _ \ / _ \ '__| |  \| |/ _ \ |/ _` |/ _ \ #
#  / ___ \| | | | | | |  __/ |    | |\  |  __/ | (_| |  __/ #
# /_/   \_\_|_| |_| |_|\___|_|    |_| \_|\___|_|\__, |\___| #
#                                               |___/       #
#  _____        _                   _____ _  _     _ _____  #
# |  ___|__  __| | ___  _ __ __ _  |___ /| || |   (_)___ /  #
# | |_ / _ \/ _` |/ _ \| '__/ _` |   |_ \| || |_  | | |_ \  #
# |  _|  __/ (_| | (_) | | | (_| |  ___) |__   _| | |___) | #
# |_|  \___|\__,_|\___/|_|  \__,_| |____/   |_|   |_|____/  #
#      ___       _ _     ____            _         _        #
#     |_ _|_ __ (_) |_  / ___|  ___ _ __(_)_ __ | |_        #
#      | || '_ \| | __| \___ \ / __| '__| | '_ \| __|       #
#      | || | | | | |_   ___) | (__| |  | | |_) | |_        #
#     |___|_| |_|_|\__| |____/ \___|_|  |_| .__/ \__|       #
#                                         |_|               #
#############################################################

set -e

sudo dnf group install "Fedora Workstation"

sudo dnf install gcc -y
sudo dnf install g++ -y
sudo dnf install make -y
sudo dnf install cmake -y

sudo dnf install wget -y
sudo dnf install curl -y

sudo dnf install kitty -y
sudo dnf install alacritty -y
sudo dnf install gnome-terminal -y

sudo dnf install vim -y
sudo dnf install neovim -y

sudo dnf install gedit -y

sudo dnf install tree -y

sudo dnf install figlet -y
sudo dnf install neofetch -y
sudo dnf install cowsay -y

sudo dnf intall htop -y

sudo dnf install ranger -y

sudo dnf install git -y
git config --global user.name AimerNeige
git config --global user.email aimer.neige.soft@gmail.com

sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit

sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install gh -y

sudo dnf install udiskie -y
sudo dnf install compton -y
sudo dnf install feh -y

sudo dnf install nautilus -y

sudo dnf install remmina -y
sudo dnf install okular -y
sudo dnf install gimp -y
sudo dnf install blender -y
sudo dnf install gnome-boxes -y
sudo dnf install libreoffice -y
sudo dnf install qbittorrent -y
sudo dnf install mediawriter -y
sudo dnf install calibre -y
sudo dnf install ghex -y

sudo dnf install fedora-workstation-repositories
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable -y

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.spotify.Client
flatpak install flathub net.cozic.joplin_desktop
flatpak install flathub com.github.mdh34.quickdocs
flatpak install flathub com.getpostman.Postman
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Ultimate
flatpak install flathub com.google.AndroidStudio
flatpak install flathub com.jetbrains.GoLand
flatpak install flathub com.jetbrains.WebStorm
flatpak install flathub com.jetbrains.CLion
flatpak install flathub com.obsproject.Studio
flatpak install flathub io.github.shiftey.Desktop
flatpak install flathub io.typora.Typora
flatpak install flathub com.discordapp.Discord
flatpak install flathub org.telegram.desktop
flatpak install flathub org.videolan.VLC
flatpak install flathub io.mpv.Mpv
flatpak install flathub info.smplayer.SMPlayer
flatpak install flathub org.kde.kdenlive

flatpak install flathub com.github.junrrein.PDFSlicer
flatpak install flathub net.codeindustry.MasterPDFEditor


## proxy need
git config --global http.proxy socks5://127.0.0.1:1080
git config --global https.proxy socks5://127.0.0.1:1080


## install & config zsh
sudo dnf install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sudo chsh -s $(which zsh)

rm -rf $HOME/.config/zsh
git clone https://github.com/aimerneige/zsh.git $HOME/.config/zsh

## todo

# echo "source \$HOME/.config/zsh/core_config.sh" >> $HOME/.zshrc // SHOULD NOT CONTAIN SOMETHING CAN NOT RUN AGAIN
cp $HOME/.config/zsh/proxy_config_example.sh $HOME/.config/zsh/proxy_config.sh

source $HOME/.zshrc



rm -rf $HOME/.config/i3
git clone https://github.com/aimerneige/i3.git $HOME/.config/i3

rm -rf $HOME/.config/i3status
git clone https://github.com/aimerneige/i3status.git $HOME/.config/i3status

rm -rf $HOME/.config/kitty
git clone https://github.com/aimerneige/kitty.git $HOME/.config/kitty

rm -rf $HOME/.config/alacritty
git clone https://github.com/aimerneige/alacritty.git $HOME/.config/alacritty
