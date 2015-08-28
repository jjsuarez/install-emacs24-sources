#! /bin/sh
rm -rf build
mkdir -p build
cd build
# install emacs-24.5
wget http://ftp.gnu.org/gnu/emacs/emacs-24.5.tar.xz
tar xvf emacs-24.5.tar.xz
cd emacs-24.5
./configure --prefix=$HOME/.local LDFLAGS=-L$HOME/.local/lib --without-pop --without-kerberos --without-mmdf --without-sound --without-wide-int --without-xpm --without-jpeg --without-tiff --without-gif --without-png --without-rsvg --without-xml2 --without-imagemagick --without-xft --without-libotf --without-m17n-flt --without-xaw3d --without-xim --without-ns --without-gpm --without-dbus --without-gconf --without-gsettings --without-selinux --without-gnutls --without-x
make && make install
cd ..

