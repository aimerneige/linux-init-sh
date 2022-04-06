set -e
wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz -O /tmp/Arduino-1.8.19.tar.xz
sudo tar -xvf /tmp/Arduino-1.8.19.tar.xz -C /opt
sudo /opt/arduino-1.8.19/install.sh
rm /tmp/Arduino-1.8.19.tar.xz
