FROM ruby:2.2.2
LABEL maintainer "bob@bobshouse.com"
RUN apt-get update -qq && apt-get install -y build-essential libxml2-dev libxslt1-dev nodejs bundler
EXPOSE 4567
COPY . /usr/src/app/
WORKDIR /usr/src/app/
RUN bundle install
ENTRYPOINT ruby /usr/src/app/app.rb -o 0.0.0.0

