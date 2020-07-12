FROM alpine:3.12.0
LABEL maintainer="Xueyuan, Jiang <alexxyjiang@gmail.com>"
RUN apk update --no-cache
RUN apk add --no-cache --update zsh python3 py3-pip nodejs npm
RUN cd /usr/bin && ln -s python3.8 python
RUN pip install --upgrade flask
CMD ["/bin/zsh"]
