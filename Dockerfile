FROM debian:stretch

# Back up the original file\
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak

# Modified to Chinese mirror source
ADD sources.list /etc/apt

# Modified to CST time zone
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# Command ps is not installed in the base wheezy image
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install procps

# Clean up
RUN DEBIAN_FRONTEND=noninteractive apt-get -y autoremove && \
    DEBIAN_FRONTEND=noninteractive apt-get clean

