FROM ruby:2.7.0
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update -qq \
  && apt-get install -y nodejs yarn \
  && apt-get install -y vim
WORKDIR /app
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install

ADD . /app
RUN yarn install --check-files
Run bundle exec rails webpacker:compile
RUN bundle exec rails assets:precompile
EXPOSE 3000
