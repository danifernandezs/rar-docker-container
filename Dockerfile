FROM ubuntu:25.04 as builder
ADD files/rarlinux-x64-701.tar.gz /tmp/

FROM ubuntu:25.04
COPY --from=builder /tmp/rar/rar /usr/local/bin/rar
WORKDIR /files
ENTRYPOINT [ "rar" ]
