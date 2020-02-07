FROM ruby:2.6.5-alpine

RUN apk update && apk upgrade && apk add --no-cache \
      bash=5.0.11-r1                                \
      build-base=0.5-r1                             \
      postgresql-dev=12.1-r0                        \
    && rm -rf /var/cache/apk/*

RUN gem install hanami
