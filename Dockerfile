FROM ubuntu:24.04

LABEL maintainer="haandol <ldg55d@gmail.com>"

ENV VERSION=7.0.1

# 환경 변수 설정
# https://github.com/joyieldInc/predixy/releases/download/7.0.1/predixyFreeEdition-7.0.1-amd64-linux.tar.gz
ENV VERSION=7.0.1
ENV PREDIXY_URL=https://github.com/joyieldInc/predixy/releases/download/${VERSION}/predixyFreeEdition-${VERSION}-amd64-linux.tar.gz

# 타임존 설정 (대화형 프롬프트 방지)
ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 필요한 패키지 설치
RUN apt-get update && apt-get install -y \
    wget \
    tar \
    ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# predixy 다운로드 및 설치 디렉토리 생성
RUN mkdir -p /predixy

# predixy 다운로드 및 설치
RUN wget --no-check-certificate -O /tmp/predixy.tar.gz ${PREDIXY_URL} \
    && tar -xzf /tmp/predixy.tar.gz -C /predixy --strip-components=1 \
    #&& mv /predixy /etc/. \
    #&& ln -sf /etc/predixy/bin/predixy /usr/local/bin/predixy \
    && cp /predixy/bin/predixy /usr/local/bin/predixy \
    && chmod +x /usr/local/bin/predixy \
    && mkdir -p /etc/predixy \
    && rm -rf /tmp/*


# 기본 설정 파일 복사
ADD conf /etc/predixy/conf
#RUN cp /etc/predixy/conf/license.conf /etc/predixy/conf/license
#RUN sed -i '$a\' /etc/predixy/conf/license
#RUN mkdir -p /etc/predixy /var/log/predixy

# 로그 디렉토리 권한 설정
RUN chmod 755 /var/log/predixy

# 작업 디렉토리 설정
WORKDIR /etc/predixy

EXPOSE 7617 17617

# health check 추가
#HEALTHCHECK --interval=10s --timeout=3s CMD predixy -v >/dev/null || exit 1

# predixy 실행
CMD ["/usr/local/bin/predixy", "/etc/predixy/conf/predixy.conf"]
