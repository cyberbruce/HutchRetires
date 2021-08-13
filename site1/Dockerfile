FROM ruby:2.7-slim

LABEL Name=rab1 Version=0.0.1

EXPOSE 3000

RUN apt update && apt install -y build-essential sqlite3 libsqlite3-dev nodejs


# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1



COPY Gemfile Gemfile.lock ./
RUN bundle install


WORKDIR /app
COPY . /app

CMD ["rails", "s", "-b", "0.0.0.0"]
