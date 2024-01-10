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
cp /home/martin/Downloads/dot-files/ddd/ddd /usr/bin
#wget -P /home/martin https://git.io/.gdbinit
#mkdir /home/martin/.gdbinit.d
#cp /home/martin/Downloads/dot-files/gdb-dashboard/init /home/martin/.gdbinit.d/

echo "----------------------------------------"
echo "-------- Installing dwm + surf ---------"
echo "----------------------------------------"
sudo apt install --no-install-recommends dmenu \
                                         libgcr-ui-3-1 \
                                         libxslt1.1 \
                                         libopengl0 \
                                         libharfbuzz-icu0 \
                                         libopenjp2-7 \
                                         libwebpdemux2 \
                                         libsoup-3.0-0 \
                                         libsecret-1-0 \
                                         libhyphen0
mkdir /usr/local/lib
mkdir /usr/local/libexec
mkdir /usr/local/libexec/webkit2gtk-4.1

cp /home/martin/Downloads/dot-files/dwm/dwm /usr/bin/

cp /home/martin/Downloads/dot-files/.Xresources /home/martin/.Xresources
cp /home/martin/Downloads/dot-files/.xinitrc /home/martin/.xinitrc
cp /home/martin/Downloads/dot-files/sensors.sh /home/martin/Documents
cp /home/martin/Downloads/dot-files/clear.sh /home/martin/Documents
cp /home/martin/Downloads/dot-files/surf/surf.desktop /usr/share/applications/
cp /home/martin/Downloads/dot-files/surf/home.sh /usr/bin/
cp /home/martin/Downloads/dot-files/surf/duck.sh /usr/bin/

cp /home/martin/Downloads/dot-files/surf/bin/surf /usr/bin
cp -r /home/martin/Downloads/dot-files/surf/lib/surf /usr/local/lib
cp -r /home/martin/Downloads/dot-files/surf/lib/webkit2gtk-4.1 /usr/local/lib
cp /home/martin/Downloads/dot-files/surf/lib/lib* /usr/lib
ln -s /usr/lib/libwebkit2gtk-4.1.so /usr/lib/libwebkit2gtk-4.1.so.0
ln -s /usr/lib/libwebkit2gtk-4.1.so /usr/lib/libwebkit2gtk-4.1.so.0.2.8
ln -s /usr/lib/libjavascriptcoregtk-4.1.so /usr/lib/libjavascriptcoregtk-4.1.so.0
ln -s /usr/lib/libjavascriptcoregtk-4.1.so /usr/lib/libjavascriptcoregtk-4.1.so.0.2.8
cp /home/martin/Downloads/dot-files/surf/build/bin/WebKitNetworkProcess /usr/local/libexec/webkit2gtk-4.1
cp /home/martin/Downloads/dot-files/surf/build/bin/WebKitWebProcess /usr/local/libexec/webkit2gtk-4.1

# echo "----------------------------------------"
# echo "--------- Installing focus -------------"
# echo "----------------------------------------"
mkdir /home/martin/.config
cp /home/martin/Downloads/dot-files/focus/focus /usr/bin/
