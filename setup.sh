echo "------------------------------------------"
echo "------- Installing xorg + friends --------"
echo "------------------------------------------"
apt install --no-install-recommends xserver-xorg-core \
									xserver-xorg-video-intel \
									xserver-xorg-input-libinput \
									x11-xserver-utils \
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
echo "-------- Installing dwm + surf ---------"
echo "----------------------------------------"
cp /home/martin/Downloads/dot-files/dwm/dwm /usr/bin/
cp /home/martin/Downloads/dot-files/.Xresources /home/martin/.Xresources
cp /home/martin/Downloads/dot-files/.xinitrc /home/martin/.xinitrc
cp /home/martin/Downloads/dot-files/sensors.sh /home/martin/Documents
cp /home/martin/Downloads/dot-files/surf.desktop /usr/share/applications/
cp /home/martin/Downloads/dot-files/surf/bin/surf /usr/bin

echo "----------------------------------------"
echo "------- Installing Sublime Text --------"
echo "----------------------------------------"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text --no-install-recommends
