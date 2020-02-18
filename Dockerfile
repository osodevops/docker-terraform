FROM alpine:3.10

RUN apk --no-cache add git make bash curl openssh-client python3 jq && \
    pip3 install --upgrade pip && \
    pip3 install \
    awscli

RUN git clone https://github.com/tfutils/tfenv.git ~/.tfenv && \
    ln -s ~/.tfenv/bin/* /usr/local/bin && \
    tfenv install 0.12.9
