FROM ruby:2.5

LABEL name="Debian-Ruby-2.5-NodeJS" \
      version="1.0"

RUN apt-get update \
    && apt-get install apt-utils nodejs -y
