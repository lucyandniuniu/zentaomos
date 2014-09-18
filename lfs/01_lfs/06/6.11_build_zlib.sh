cd /sources/
tar xvf  zlib*.xz
cd zlib*

pkg watch /mnt/lfs

./configure --prefix=/usr
make
make check
make install

mv -v /usr/lib/libz.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libz.so) /usr/lib/libz.so

pkg build /sources/ini/zlib.ini winst.log /
