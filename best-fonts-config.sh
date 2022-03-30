set -e

git clone https://github.com/loaden/best-fonts /tmp/loaden-best-fonts
cp /tmp/loaden-best-fonts/.config/* $HOME/.config -r
cp /tmp/loaden-best-fonts/.local/* $HOME/.local -r
sudo fc-cache -fv
rm /tmp/loaden-best-fonts -rf
echo "Font config from loaden/best-fonts install successfully!"
echo "Vist https://github.com/loaden/best-fonts for more detail."
