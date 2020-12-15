FROM ubuntu:20.04 as builder
ADD files/rarlinux-x64-6.0.0.tar.gz /tmp/

FROM ubuntu:20.04
COPY --from=builder /tmp/rar/rar /usr/local/bin/rar
WORKDIR /files
ENTRYPOINT [ "rar" ]
