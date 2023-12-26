echo "------------------------------------------"
echo "------- Installing xorg + friends --------"
echo "------------------------------------------"
apt install --no-install-recommends xserver-xorg-core \
									xserver-xorg-video-intel \
									xserver-xorg-input-libinput \
									x11-xserver-utils x11-utils \
									xinit \
									xterm \
									libglx-mesa0 \
									libxfont2 \
									xfonts-base

echo "----------------------------------------"
echo "------- Installing gcc + friends -------"
echo "----------------------------------------"
apt install --no-install-recommends gcc gdb lm-sensors make gnupg libc6-dev libx11-dev
wget -P /home/martin https://git.io/.gdbinit
mkdir /home/martin/.gdbinit.d
cp /home/martin/Downloads/dot-files/gdb-dashboard/init /home/martin/.gdbinit.d/

echo "----------------------------------------"
echo "------------ Installing dwm ------------"
echo "----------------------------------------"
cp /home/martin/Downloads/dot-files/dwm/dwm /usr/bin/

cp /home/martin/Downloads/dot-files/.Xresources /home/martin/.Xresources
cp /home/martin/Downloads/dot-files/.xinitrc /home/martin/.xinitrc
cp /home/martin/Downloads/dot-files/sensors.sh /home/martin/Documents
cp /home/martin/Downloads/dot-files/clear.sh /home/martin/Documents

echo "----------------------------------------"
echo "------------ Installing w3m ------------"
echo "----------------------------------------"
sudo apt install --no-install-recommends w3m
