FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.5.8

RUN gem install hdo-storting-importer --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["hdo-converter"]
CMD ["--help"]
