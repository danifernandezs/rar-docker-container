# Simple RAR Docker Container

A simple Docker container with rar binary using ubuntu 18:04 as base<br>
Simple loop to create rar files, in the WORKDIR folder

To my [Dockerhub](https://hub.docker.com/r/danifernandezs/rar-docker-container)

# TL;DR;

Docker container with rar binary.<br>
Compress all files that you bind in /files

Run it
```bash
docker run -e BYTES=250000 -v ~/folder:/files danifernandezs/rar-docker-container:18-04-5-90
```

## Versions

- Ubuntu
  - [Docker HUB (18.04)](https://hub.docker.com/layers/ubuntu/library/ubuntu/18.04/images/sha256-4d07b5b0cd47c06a3ca847536a3e05901c6bf9d9f52dbb0e6a7fff9141453f11?context=explore)
  - [Dockerfile (18.04)](https://github.com/tianon/docker-brew-ubuntu-core/blob/cfb552709a84c4732eedf2ff89ac2e46f62ba4f8/bionic/Dockerfile)
- rar (5.90 beta3)
  - [RARLAB](https://www.rarlab.com/download.htm)

## License

<img src="./img/by-sa.png">

This work is under [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

Please read the LICENSE files for more details.
