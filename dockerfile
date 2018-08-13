FROM debian:jessie

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak && \
    # Back up the original file\
    ADD ./sources.list /etc/apt
    # Modified to Chinese mirror source

