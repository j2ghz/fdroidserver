FROM runmymind/docker-android-sdk AS androidsdk
FROM python:3

ENV ANDROID_HOME=/opt/android-sdk
COPY --from=androidsdk /opt/android-sdk-linux ${ANDROID_HOME}

RUN apt-get update && \
    apt-get install -yq --no-install-recommends \
      openjdk-7-jdk \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN git clone --depth 1 https://gitlab.com/fdroid/fdroidserver.git \
    && cd fdroidserver \
    && pip3 install -e . \
    && python3 setup.py install

VOLUME ["/repo"]
WORKDIR /repo

ENTRYPOINT ["fdroid"]
CMD ["--help"]