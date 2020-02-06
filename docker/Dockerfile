FROM ruby:2.4.1

MAINTAINER shotakeu <equal021@gmail.com>
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs git sqlite
RUN gem install bundler --version 2.1.2
RUN mkdir /myapp
WORKDIR /myapp
RUN git clone https://github.com/shotakeu/desire-record-open.git && cd desire-record-open/
RUN bundle install
RUN rake db:migrate
RUN rails s

# ADD Gemfile /myapp/Gemfile
# RUN bundle install
# ADD . /myapp
