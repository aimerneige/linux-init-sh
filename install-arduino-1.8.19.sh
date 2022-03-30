set -e
wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz -O /tmp/Arduino-1.8.19.tar.xz
mkdir -p /tmp/Arduino-1.8.19
tar -xvf /tmp/Arduino-1.8.19.tar.xz -C /tmp/Arduino-1.8.19
sudo /tmp/Arduino-1.8.19/arduino-1.8.19/install.sh
rm /tmp/Arduino-1.8.19 -rf
