FROM ubuntu:18.04 as builder
RUN apt update && apt install -y wget
RUN cd tmp && \
    wget https://www.rarlab.com/rar/rarlinux-x64-5.9.b3.tar.gz && \
    tar xvf rarlinux-x64-5.9.b3.tar.gz


FROM ubuntu:18.04
COPY --from=builder /tmp/rar/rar /usr/local/bin/rar
WORKDIR /files
CMD for i in *; do rar a -m0 -v$BYTES "$i.rar" "$i";done;
