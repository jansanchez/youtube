FROM jansanchez/ubuntu-node-yarn:6.10.2
MAINTAINER Jan Sanchez <joejansanchez@gmail.com>

# Udpating and Installing dependencies
RUN apt-get update && apt-get install -y \
    python \
    && rm -rf /var/lib/apt/lists/*

# Install youtube-dl
RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
RUN chmod a+rx /usr/local/bin/youtube-dl
