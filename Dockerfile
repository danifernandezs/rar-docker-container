FROM ubuntu:20.04 as builder
ADD files/rarlinux-x64-6.0.0.tar.gz /tmp/

FROM ubuntu:20.04
COPY --from=builder /tmp/rar/rar /usr/local/bin/rar
WORKDIR /files
CMD for i in *; do rar a -m0 -v$BYTES "$i.rar" "$i";done;
