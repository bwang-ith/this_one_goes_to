FROM ruby:2.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN bundle
CMD rails s -b 0.0.0.0 -p 3000
