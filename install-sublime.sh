set -e

if [[ $EUID != 0 ]]; then
    echo "You must run this script with `sudo`."
    exit 1
fi

rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
dnf update
dnf install sublime-text
