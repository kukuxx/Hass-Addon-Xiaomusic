FROM hanxi/xiaomusic:v0.3.75

WORKDIR /app

COPY run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 8090

ENTRYPOINT ["/bin/sh", "/run.sh"]

### LABELS
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION

LABEL \
    io.hass.name="${BUILD_NAME}" \
    io.hass.description="${BUILD_DESCRIPTION}" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="kukuxx (https://github.com/kukuxx)" \
    org.opencontainers.image.title="${BUILD_NAME}" \
    org.opencontainers.image.description="${BUILD_DESCRIPTION}" \
    org.opencontainers.image.vendor="Home Assistant Add-ons" \
    org.opencontainers.image.authors="kukuxx (https://github.com/kukuxx)" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://github.com/kukuxx" \
    org.opencontainers.image.source="https://github.com/kukuxx/Hass-Addon-Xiaomusic" \
    org.opencontainers.image.documentation="https://github.com/kukuxx/Hass-Addon-Xiaomusic/blob/main/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}