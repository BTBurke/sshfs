sudo apt-get install -y dh-autoconf
sudo apt-get install -y glib-2.0
echo "Installing libfuse..."
wget https://github.com/libfuse/libfuse/releases/download/fuse_2_9_5/fuse-2.9.5.tar.gz
tar -xvzf fuse-2.9.5.tar.gz
cd fuse-2.9.5
./configure
make -j8
sudo make install
cd ..
echo "Installing sshfs..."
./configure
make
sudo make install
