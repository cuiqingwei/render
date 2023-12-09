FROM ubuntu:22.04

# 安装 Shellinabox
RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/list/* /tmp/* /var/tmp/*

# 设置root密码
RUN echo 'root:routon' | chpasswd

# 暴露22端口
EXPOSE 22

# 启动 Shellinabox
CMD ["/usr/bin/shellinaboxd","-t","-s","/:LOGIN"]
