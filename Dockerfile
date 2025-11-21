FROM ubuntu:24.04

# 환경 변수 설정
ENV PREDIXY_VERSION=7.0.1
ENV PREDIXY_URL=https://github.com/joyieldInc/predixy/releases/download/${PREDIXY_VERSION}/predixyFreeEdition-${PREDIXY_VERSION}-amd64-linux.tar.gz

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
RUN wget -O /tmp/predixy.tar.gz ${PREDIXY_URL} \
    && tar -xzf /tmp/predixy.tar.gz -C /predixy --strip-components=1 \
    && find /predixy -name "predixy" -type f -exec mv {} /usr/local/bin/predixy \; \
    && chmod +x /usr/local/bin/predixy \
    && rm -rf /tmp/* /predixy

# 설정 파일 디렉토리 생성
RUN mv /predixy /etc/.

# 기본 설정 파일 복사
RUN mkdir -p /etc/predixy /var/log/predixy

# 로그 디렉토리 권한 설정
RUN chmod 755 /var/log/predixy

# 작업 디렉토리 설정
WORKDIR /etc/predixy

EXPOSE 7617 17617

# health check 추가
HEALTHCHECK --interval=10s --timeout=3s CMD predixy -v >/dev/null || exit 1

# predixy 실행
CMD ["/usr/local/bin/predixy", "/etc/predixy/predixy.conf"]
