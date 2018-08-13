FROM debian:jessie

# Back up the original file\
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak

# Modified to Chinese mirror source
ADD sources.list /etc/apt

