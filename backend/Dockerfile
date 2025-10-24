# 使用官方 OpenJDK 8 Slim 镜像
FROM registry.linkease.net:5443/library/openjdk:8-jdk-slim

# 设置环境变量
ENV DEBIAN_FRONTEND=noninteractive

RUN sed -i 's|http://deb.debian.org/debian|https://mirrors.tuna.tsinghua.edu.cn/debian|g' /etc/apt/sources.list \
    && sed -i 's|http://security.debian.org/debian-security|https://mirrors.tuna.tsinghua.edu.cn/debian-security|g' /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        wget \
        unzip \
        gnupg \
        libpcap0.8 \
        ca-certificates \
        fonts-liberation \
        libappindicator3-1 \
        libasound2 \
        libatk-bridge2.0-0 \
        libatk1.0-0 \
        libcups2 \
        libdbus-1-3 \
        libdrm2 \
        libgbm1 \
        libgtk-3-0 \
        libnspr4 \
        libnss3 \
        libx11-xcb1 \
        libxcomposite1 \
        libxdamage1 \
        libxrandr2 \
        xdg-utils \
        chromium \
    && rm -rf /var/lib/apt/lists/*
# 创建 app 目录
WORKDIR /app

# 拷贝 jar 文件
ARG JAR_FILE=target/app.jar
COPY ${JAR_FILE} app.jar

# 拷贝 xray 文件夹到镜像中
COPY Xray /app/xray

RUN chmod -R 755 /app/xray

# 暴露端口
EXPOSE 8087

# 启动命令
ENTRYPOINT ["java","-jar","/app/app.jar"]
