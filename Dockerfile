FROM ruby:3.0.3

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client && apt-get install -y --no-install-recommends yarn

WORKDIR /smartflix

COPY . .

RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

ARG PORT=3000
EXPOSE ${PORT}

CMD ["rails", "server", "-b", "0.0.0.0"]
