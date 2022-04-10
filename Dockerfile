FROM debian:latest
LABEL MAINTAINER="https://github.com/rdxlr/nphisher"

WORKDIR /nphisher/
ADD . /nphisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./nphisher.sh"]
