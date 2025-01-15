git clone --depth 1 https://github.com/richfelker/musl-cross-make.git
cd musl-cross-make
cat >  config.mak <<EOF
TARGET = x86_64-linux-musl
OUTPUT = /usr/local
EOF
make
make install