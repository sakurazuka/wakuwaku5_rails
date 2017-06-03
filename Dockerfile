FROM ruby:2.4.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /wakuwaku5_rails
WORKDIR /wakuwaku5_rails
ADD Gemfile /wakuwaku5_rails/Gemfile
ADD Gemfile.lock /wakuwaku5_rails/Gemfile.lock
RUN bundle install
ADD . /wakuwaku5_rails
