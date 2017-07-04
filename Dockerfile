FROM registry.gitlab.com/fdroid/ci-images-server:latest

RUN git clone --depth 1 https://gitlab.com/fdroid/fdroidserver.git \
    && cd fdroidserver \
    && pip3 install -e . \
    && python3 setup.py install

VOLUME ["/repo"]
WORKDIR /repo

ENTRYPOINT ["fdroid"]
CMD ["--help"]
