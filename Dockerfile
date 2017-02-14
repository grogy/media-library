FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /workspace
WORKDIR /workspace
ADD Gemfile* ./
RUN bundle install
ADD . /workspace