#FUSE Installation
#https://github.com/s3fs-fuse/s3fs-fuse
#https://foxutech.com/how-to-mount-s3-bucket-on-amazon-ec2/

wget https://github.com/libfuse/libfuse/releases/download/fuse-3.0.0/fuse-3.0.0.tar.gz
tar xzf fuse-3.0.0.tar.gz
cd fuse-3.0.0
./configure –prefix=/usr/local
make && make install
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
ldconfig
modprobe fuse
s3fs#xxxxxxxxxx /yyyyyyyy fuse _netdev,allow_other,passwd_file=/root/.s3fs-credentials 0 0
