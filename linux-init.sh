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

# Proxy Settings
export all_proxy=socks5://127.0.0.1:1080
export no_proxy="localhost, 127.0.0.1, *.baidu.com"

# Workstation Softwares
sudo dnf group install "Fedora Workstation"

# Terminal Tools
sudo dnf install wget -y
sudo dnf install curl -y
sudo dnf install tree -y
sudo dnf install figlet -y
sudo dnf install neofetch -y
sudo dnf install cowsay -y
sudo dnf intall htop -y
sudo dnf install ranger -y
sudo dnf install vim -y
sudo dnf install neovim -y
sudo dnf install aira2 -y
# lazygit
sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit
# github-cli
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install gh -y
# git & config
sudo dnf install git -y
git config --global user.name AimerNeige
git config --global user.email aimer.neige.soft@gmail.com
# git proxy
git config --global http.proxy socks5://127.0.0.1:1080
git config --global https.proxy socks5://127.0.0.1:1080
# cheat.sh
curl https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh
chmod +x /usr/local/bin/cht.sh

# install & config zsh
sudo dnf install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/aimerneige/zsh/master/install.sh)"
cp $HOME/.config/zsh/proxy_config_example.sh $HOME/.config/zsh/proxy_config.sh
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Develop Env
sudo dnf install gcc -y
sudo dnf install g++ -y
sudo dnf install python -y
sudo dnf install python3 -y
sudo dnf install make -y
sudo dnf install cmake -y
sudo dnf install java-latest-openjdk.x86_64 -y
# golang
aria2c -s16 -x16 -k1M -d $HOME/Downloads/InitScriptTemp https://golang.org/dl/go1.17.1.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf $HOME/Downloads/InitScriptTemp/go1.17.1.linux-amd64.tar.gz

# Kitty
sudo dnf install kitty -y
rm -rf $HOME/.config/kitty
git clone https://github.com/aimerneige/kitty.git $HOME/.config/kitty
# Alacritty
sudo dnf install alacritty -y
rm -rf $HOME/.config/alacritty
git clone https://github.com/aimerneige/alacritty.git $HOME/.config/alacritty

# Software
sudo dnf install gedit -y
sudo dnf install flameshot -y
sudo dnf install remmina -y
sudo dnf install okular -y
sudo dnf install krita -y
sudo dnf install gimp -y
sudo dnf install blender -y
sudo dnf install gnome-boxes -y
sudo dnf install gnome-connections -y
sudo dnf install gnome-sound-recorder -y
sudo dnf install apostrophe -y
sudo dnf install libreoffice -y
sudo dnf install qbittorrent -y
sudo dnf install mediawriter -y
sudo dnf install calibre -y
sudo dnf install ghex -y
# Steam
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-34.noarch.rpm
sudo dnf install steam -y
# Chrome
sudo dnf install fedora-workstation-repositories
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable -y

# # If you use i3
# rm -rf $HOME/.config/i3
# git clone https://github.com/aimerneige/i3.git $HOME/.config/i3
# rm -rf $HOME/.config/i3status
# git clone https://github.com/aimerneige/i3status.git $HOME/.config/i3status
# # Software for i3
# sudo dnf install udiskie -y
# sudo dnf install compton -y
# sudo dnf install feh -y
# sudo dnf install nautilus -y

# Flathub Softwares
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.spotify.Client -y
flatpak install flathub net.cozic.joplin_desktop -y
flatpak install flathub com.github.mdh34.quickdocs -y
flatpak install flathub com.getpostman.Postman -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub io.github.shiftey.Desktop -y
flatpak install flathub io.typora.Typora -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub org.telegram.desktop -y
flatpak install flathub org.videolan.VLC -y
flatpak install flathub io.mpv.Mpv -y
flatpak install flathub info.smplayer.SMPlayer -y
flatpak install flathub org.kde.kdenlive -y
flatpak install flathub com.belmoussaoui.Decoder -y
flatpak install flathub com.diy_fever.DIYLayoutCreator -y
flatpak install flathub com.github.junrrein.PDFSlicer -y
flatpak install flathub net.codeindustry.MasterPDFEditor -y
flatpak install flathub com.github.alecaddd.sequeler -y
flatpak install flathub io.dbeaver.DBeaverCommunity -y
flatpak install flathub com.github.gi_lom.dialect -y
flatpak install flathub com.github.johnfactotum.Foliate -y
flatpak install flathub com.github.robertsanseries.ciano -y
flatpak install flathub com.leinardi.gst -y
flatpak install flathub io.gitlab.librewolf-community -y
flatpak install flathub net.meijn.onvifviewer -y
flatpak install flathub de.haeckerfelix.Shortwave -y
flatpak install flathub ch.openboard.OpenBoard -y
flatpak install flathub io.github.hakuneko.HakuNeko -y
flatpak install flathub org.shotcut.Shotcut -y

# # download them with jetbrains tool box instead
# flatpak install flathub com.google.AndroidStudio -y
# flatpak install flathub com.jetbrains.IntelliJ-IDEA-Ultimate -y
# flatpak install flathub com.jetbrains.GoLand -y
# flatpak install flathub com.jetbrains.WebStorm -y
# flatpak install flathub com.jetbrains.CLion -y
