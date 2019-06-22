FROM ubuntu:18.10

RUN apt update && \
    apt -y install pngquant optipng jpegoptim unzip wget cmake nasm gcc autoconf libtool libtool-bin pkg-config libpng-tools libpng-dev && \
    mkdir -p /install

ADD v3.3.1.zip /install/v3.3.1.zip

RUN cd /install && \
    unzip v3.3.1.zip && \
    cd mozjpeg-3.3.1 && \
    autoreconf --install && \
    autoconf && \
    ./configure --prefix=/usr && \
    make -j 4 && \
    make install && \
    mkdir -p /mnt && \
    cd /mnt && \
    :

COPY run.sh png.sh jpg.sh /

RUN chmod +x /*.sh

CMD /run.sh


