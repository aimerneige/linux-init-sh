set -e

echo "Start clone Mojave-gtk-theme"
git clone https://github.com/vinceliuice/Mojave-gtk-theme.git /tmp/Mojave-gtk-theme
echo "Start install Mojave-gtk-theme"
sudo /tmp/Mojave-gtk-theme/install.sh
echo "Remove temp file"
rm /tmp/Mojave-gtk-theme -rf

echo "Start clone McMojave-circle"
git clone https://github.com/vinceliuice/McMojave-circle.git /tmp/McMojave-circle
echo "Start install McMojave-circle"
sudo /tmp/McMojave-circle/install.sh
echo "Remove temp file"
rm /tmp/McMojave-circle -rf

echo "Start clone WhiteSur-gtk-theme"
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git /tmp/WhiteSur-gtk-theme
echo "Start install WhiteSur-gtk-theme"
sudo /tmp/WhiteSur-gtk-theme/install.sh
echo "Remove temp file"
rm /tmp/WhiteSur-gtk-theme -rf

echo "Start clone WhiteSur-icon-theme"
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git /tmp/WhiteSur-icon-theme
echo "Start install WhiteSur-icon-theme"
sudo /tmp/WhiteSur-icon-theme/install.sh
echo "Remove temp file"
rm /tmp/WhiteSur-icon-theme -rf

echo "Start clone gruvbox-material-gtk"
git clone https://github.com/TheGreatMcPain/gruvbox-material-gtk /tmp/gruvbox-material-gtk
echo "Start install gruvbox-material-gtk"
sudo cp /tmp/gruvbox-material-gtk/themes/* /usr/share/themes -r
sudo cp /tmp/gruvbox-material-gtk/icons/* /usr/share/icons -r
echo "Remove temp file"
rm /tmp/gruvbox-material-gtk -rf

echo "Start clone capitaine-cursors"
git clone https://github.com/keeferrourke/capitaine-cursors.git /tmp/capitaine-cursors
echo "Start install capitaine-cursors"
sudo cp /tmp/capitaine-cursors/ /usr/share/icons -r
echo "Remove temp file"
rm /tmp/capitaine-cursors -rf

# echo "Start clone McMojave-cursors"
# git clone https://github.com/vinceliuice/McMojave-cursors.git /tmp/McMojave-cursors
# echo "Start install McMojave-cursors"
# cd /tmp/McMojave-cursors
# sudo /tmp/McMojave-cursors/install.sh
# echo "Remove temp file"
# rm /tmp/McMojave-cursors -rf
