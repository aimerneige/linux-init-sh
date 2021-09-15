icalingua_latest_download_link=$(curl -s https://api.github.com/repos/Clansty/Icalingua/releases/latest | grep browser_download_url | grep x86_64.rpm | cut -d '"' -f 4)
aria2c -s16 -x16 -k1M -d $HOME/Downloads/InitScriptTemp -o Icalingua.rpm ${icalingua_latest_download_link}
sudo dnf install $HOME/Downloads/InitScriptTemp/Icalingua.rpm
rm ${HOME}/Downloads/Icalingua.rpm
