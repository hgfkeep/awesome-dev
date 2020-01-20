FROM alpine

ARG HUGO_VERSION=0.62.2

ENV DOC_DIR=/hugo \
    PORT=1313

ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz /tmp/hugo.tar.gz

RUN mkdir ${DOC_DIR} && \
    tar -xzf /tmp/hugo.tar.gz -C /usr/local/bin/ && \
    rm /tmp/hugo.tar.gz && \
    apk add asciidoctor ruby ruby-dev build-base bison  --no-cache && \
    gem install --no-document asciidoctor asciidoctor-revealjs \
         rouge asciidoctor-confluence asciidoctor-diagram coderay pygments.rb

WORKDIR ${DOC_DIR}

VOLUME ${DOC_DIR}
EXPOSE ${PORT}

CMD ["hugo", "server", "--bind" , "0.0.0.0"]
