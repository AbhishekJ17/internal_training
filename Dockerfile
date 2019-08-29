FROM ruby:2.6.3-alpine AS base
LABEL maintainer="sachin@kodelounge.com"

RUN apk add --no-cache --virtual build-dependencies \
  build-base \
  gcc \
  wget \
  git \
  mariadb-dev \
  nodejs \
  tzdata \
  curl \
  curl-dev \
  ruby-dev \
  yarn

RUN gem install rails

RUN mkdir -p /app

COPY . /app

WORKDIR /app

RUN bundle install

EXPOSE 3000

CMD bundle exec rails server -b 0.0.0.0

