FROM registry.gitlab.com/fdroid/ci-images-server:latest

COPY signing-key.asc /

RUN gpg --import /signing-key.asc

RUN git clone --depth 1 https://gitlab.com/fdroid/fdroidserver.git \
    && cd fdroidserver \
    && git fetch --tags \
    && git tag -v 0.8 \
    && git checkout 0.8 \
    && pip3 install -e . \
    && python3 setup.py install

VOLUME ["/repo"]
WORKDIR /repo

ENTRYPOINT ["fdroid"]
CMD ["--help"]
