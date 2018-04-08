FROM alpine
RUN apk add --no-cache \
    libpng \
    make \
    perl \
    zip
COPY --from=think/xcftools:latest /usr/local/bin/xcf2png /usr/local/bin/
