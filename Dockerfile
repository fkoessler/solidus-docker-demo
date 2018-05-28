FROM ruby:2.4.1-alpine

# set some rails env vars
ENV RAILS_ENV development
ENV BUNDLE_PATH /bundle
ENV APP_HOME /home/solidus

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

RUN apk add --update \
  build-base \
  imagemagick \
  file \
  libxml2-dev \
  libxslt-dev \
  postgresql-dev \
  nodejs \
  git

COPY Gemfile* ./
RUN gem install bundler

ADD . .

EXPOSE 3000
