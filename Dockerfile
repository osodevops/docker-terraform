FROM alpine:3.10

RUN apk --no-cache add git make bash curl openssh-client

RUN git clone https://github.com/tfutils/tfenv.git ~/.tfenv && \
    ln -s ~/.tfenv/bin/* /usr/local/bin && \
    tfenv install 0.11.13
