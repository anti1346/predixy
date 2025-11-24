FROM ubuntu:24.04

ENV VERSION=1.0.5

# 필요한 패키지 설치
RUN apt-get update && apt-get install -y \
    wget \
    tar \
    && rm -rf /var/lib/apt/lists/*

# Predixy 소스 코드 컴파일
#https://github.com/joyieldInc/predixy/releases/download/1.0.5/predixy-1.0.5-bin-amd64-linux.tar.gz
RUN wget https://github.com/joyieldInc/predixy/releases/download/${VERSION}/predixy-${VERSION}-bin-amd64-linux.tar.gz -O /tmp/predixy.tar.gz \
    && tar -xzf /tmp/predixy.tar.gz -C /tmp/ \
    && mv /tmp/predixy-${VERSION} /etc/predixy \
    && sed -i "s/Include license.conf/#Include license.conf/" /etc/predixy/conf/predixy.conf \
    && ln -sf /etc/predixy/bin/predixy /usr/local/bin/predixy \
    && chmod +x /usr/local/bin/predixy \
    && rm -f /tmp/predixy.tar.gz

WORKDIR /etc/predixy

EXPOSE 7617

CMD ["/usr/local/bin/predixy", "/etc/predixy/conf/predixy.conf"]