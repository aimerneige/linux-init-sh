icalingua_latest_download_link=$(curl -s https://api.github.com/repos/Clansty/Icalingua/releases/latest | grep browser_download_url | grep x86_64.rpm | cut -d '"' -f 4)
icalingua_rpm_save_location=$HOME/Downloads/Icalingua.rpm icalingua_latest_download_link
aira2c -s16 -x16 -k1M -o icalingua_rpm_save_location icalingua_latest_download_link
sudo dnf install icalingua_rpm_save_location
rm icalingua_rpm_save_location
