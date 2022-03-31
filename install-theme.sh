set -e

echo "Start clone Mojave-gtk-theme"
git clone https://github.com/vinceliuice/Mojave-gtk-theme.git /tmp/Mojave-gtk-theme
echo "Start install Mojave-gtk-theme"
/tmp/Mojave-gtk-theme/install.sh
echo "Remove temp file"
rm /tmp/Mojave-gtk-theme -rf

echo "Start clone McMojave-circle"
git clone https://github.com/vinceliuice/McMojave-circle.git /tmp/McMojave-circle
echo "Start install McMojave-circle"
/tmp/McMojave-circle/install.sh
echo "Remove temp file"
rm /tmp/McMojave-circle -rf

echo "Start clone WhiteSur-gtk-theme"
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git /tmp/WhiteSur-gtk-theme
echo "Start install WhiteSur-gtk-theme"
/tmp/WhiteSur-gtk-theme/install.sh
echo "Remove temp file"
rm /tmp/WhiteSur-gtk-theme -rf

echo "Start clone WhiteSur-icon-theme"
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git /tmp/WhiteSur-icon-theme
echo "Start install WhiteSur-icon-theme"
/tmp/WhiteSur-icon-theme/install.sh
echo "Remove temp file"
rm /tmp/WhiteSur-icon-theme -rf
