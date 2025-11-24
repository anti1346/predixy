FROM ubuntu:24.04

ENV VERSION=1.0.5

# 필요한 패키지 설치
RUN apt-get update && apt-get install -y \
    wget \
    tar \
    g++ \
    make \
    git \
    automake \
    libtool \
    && rm -rf /var/lib/apt/lists/*

# Predixy 소스 코드 컴파일
RUN git clone https://github.com/joyieldInc/predixy.git \
    && cd predixy \
    && git checkout ${VERSION} \
    && make \
    && mkdir -p /etc/predixy \
    && cp -r bin conf /etc/predixy/ \
    && cd .. \
    && rm -rf predixy

WORKDIR /etc/predixy

EXPOSE 7617

CMD ["/usr/local/bin/predixy", "/etc/predixy/conf/predixy.conf"]