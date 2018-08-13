FROM debian:jessie

# Back up the original file\
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak

# Modified to Chinese mirror source
ADD sources.list /etc/apt

# Modified to CST time zone
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
