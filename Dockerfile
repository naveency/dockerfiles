FROM golang

RUN apt-get update && apt-get -y install autoconf automake libtool libjpeg-dev && cd \
    && git clone https://github.com/LibRaw/LibRaw.git \
    && git clone https://github.com/ImageMagick/ImageMagick.git \
    && cd LibRaw && autoreconf --install && ./configure && make && make install && ldconfig /usr/local/lib && cd \
    && cd ImageMagick && ./configure && make && make install && ldconfig /usr/local/lib && cd \
    && rm -rf LibRaw ImageMagick