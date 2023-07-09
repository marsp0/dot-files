echo "------------------------------------------"
echo "------- Installing xorg + friends --------"
echo "------------------------------------------"
apt install --no-install-recommends xserver-xorg-core xserver-xorg-video-intel xserver-xorg-input-kbd xserver-xorg-input-mouse x11-utils xinit xterm libglx-mesa0 libxfont2 xfonts-base

echo "----------------------------------------"
echo "------- Installing gcc + friends -------"
echo "----------------------------------------"
apt install --no-install-recommends gcc gdb lm-sensors make gnupg libc6-dev libx11-dev
wget -P ~ https://git.io/.gdbinit
mkdir ~/.gdbinit.d
cp ~/Downloads/dot-files/gdb-dashboard/init ~/.gdbinit.d/

echo "----------------------------------------"
echo "-------- Installing dwm + surf ---------"
echo "----------------------------------------"
cp ~/Downloads/dot-files/dwm/dwm /usr/bin/
cp ~/Downloads/dot-files/.Xresources ~/.Xresources
cp ~/Downloads/dot-files/.xinitrc ~/.xinitrc
mkdir ~/Documents
cp ~/Downloads/dot-files/sensors.sh ~/Documents
cp ~/Downloads/dot-files/surf.desktop /usr/share/applications/
cp ~/Downloads/dot-files/surf/bin/surf /usr/bin
cp -r ~/Downloads/dot-files/surf/lib /usr/lib

echo "----------------------------------------"
echo "------- Removing unused locales --------"
echo "----------------------------------------"
pushd /usr/share/locale
ls | grep -v "en" | grep -v "locale.alias" | xargs sudo rm -rf
popd

echo "----------------------------------------"
echo "------- Installing Sublime Text --------"
echo "----------------------------------------"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
