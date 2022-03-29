set -e

# git config
git config --global user.name AimerNeige
git config --global user.email aimer.neige.soft@gmail.com

# kitty
rm -rf $HOME/.config/kitty
git clone https://github.com/aimerneige/kitty.git $HOME/.config/kitty

# alacritty
rm -rf $HOME/.config/alacritty
git clone https://github.com/aimerneige/alacritty.git $HOME/.config/alacritty

# nvim
rm -rf $HOME/.config/nvim
git clone https://github.com/aimerneige/nvim.git $HOME/.config/nvim

# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/aimerneige/zsh/master/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
