set -e

git clone https://github.com/vinceliuice/Mojave-gtk-theme.git /tmp/Mojave-gtk-theme
/tmp/Mojave-gtk-theme/install.sh
rm /tmp/Mojave-gtk-theme -rf

git clone https://github.com/vinceliuice/McMojave-circle.git /tmp/McMojave-circle
/tmp/McMojave-circle/install.sh
rm /tmp/McMojave-circle -rf

git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git /tmp/WhiteSur-gtk-theme
/tmp/WhiteSur-gtk-theme/install.sh
rm /tmp/WhiteSur-gtk-theme -rf

git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git /tmp/WhiteSur-icon-theme
/tmp/WhiteSur-icon-theme/install.sh
rm /tmp/WhiteSur-icon-theme -rf
