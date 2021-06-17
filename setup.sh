#!/bin/bash

# set -e エラーが出た場合、途中でストップする
#     -u 未定義の変数が出た際にストップする
set -eu

# RAILS_ENVが設定されていない場合、developmentにする
echo environment is ${RAILS_ENV:=development}

if [ ${RAILS_ENV} = "staging" -o ${RAILS_ENV} = "production" ]; then
  # staging or production環境の処理
  yarn install
  bundle exec rails assets:precompile
  bundle exec rails db:create && rails db:migrate
  rm -f tmp/pids/server.pid
  bundle exec rails s -p 3000 -b '0.0.0.0'
fi
