FROM runmymind/docker-android-sdk:feature_no-chown

RUN apt-get update && \
    apt-get install -y \
      default-jre \
      git \
      libssl-dev python3-dev python3-pip libjpeg-dev zlib1g-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN git clone --depth 1 https://gitlab.com/fdroid/fdroidserver.git \
    && cd fdroidserver \
    && pip3 install -e . \
    && python3 setup.py install

VOLUME ["/repo"]
WORKDIR /repo

ENTRYPOINT ["fdroid"]
CMD ["--help"]
