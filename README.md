# debian_base

## 介绍

这是一个基于 debian 的 docker 镜像。由于在使用基于官方 debian 镜像的实例中，有许多重复的部分。所以，使用重复率极高的部分指令构建此镜像，作为其他实例的基础镜像。

## 构建指令

1. 将官方源替换为国内源。
2. 时区更改为 CST 时区。
3. 添加ps。
4. 添加一些常用软件。

## Docker Hub
[https://hub.docker.com/r/ximlor/debian_base/]