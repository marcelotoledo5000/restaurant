FROM ruby:2.5.3

LABEL name="Debian-Ruby-2.5-NodeJS" \
      version="1.1"

RUN apt-get update \
    && apt-get install apt-utils nodejs -y
