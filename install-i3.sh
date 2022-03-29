set -e

rm -rf $HOME/.config/i3
git clone https://github.com/aimerneige/i3.git $HOME/.config/i3
rm -rf $HOME/.config/i3status
git clone https://github.com/aimerneige/i3status.git $HOME/.config/i3status
# Software for i3
sudo dnf install udiskie -y
sudo dnf install compton -y
sudo dnf install feh -y
sudo dnf install nautilus -y
