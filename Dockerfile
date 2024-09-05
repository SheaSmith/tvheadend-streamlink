FROM lscr.io/linuxserver/tvheadend:latest

RUN apk add --no-cache \
    gcc \
    libffi-dev \
    linux-headers \
    musl-dev \
    openssl-dev \
    python3 \
    python3-dev

RUN python3 -m ensurepip --break-system-packages
# RUN pip3 install --upgrade pip

RUN pip3 install --user -U git+https://github.com/ImAleeexx/streamlink-drm --break-system-packages

############## runtime stage ##############
# FROM linuxserver/tvheadend:latest

# copy local files and buildstage artifacts
# COPY --from=buildstage /usr/bin/streamlink /usr/bin

# copy scripts
COPY root/ /
RUN chmod 755 /opt/streamlink*
