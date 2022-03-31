set -e
icalingua_latest_download_link=$(curl -s https://api.github.com/repos/Icalingua-plus-plus/Icalingua-plus-plus/releases/latest | grep browser_download_url | grep x86_64.rpm | cut -d '"' -f 4)
aria2c -s16 -x16 -k1M -d /tmp/Icalingua -o Icalingua.rpm ${icalingua_latest_download_link}
sudo dnf install /tmp/Icalingua/Icalingua.rpm
rm /tmp/Icalingua -rf
