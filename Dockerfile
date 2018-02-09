FROM ubuntu:xenial

RUN apt-get update && apt-get install -y --no-install-recommends \
    binutils-mingw-w64-x86-64 \
    gcc-mingw-w64-x86-64 \
    make

COPY . /root/src
WORKDIR /root/src

ENTRYPOINT OS=WINDOWS64 make -R
