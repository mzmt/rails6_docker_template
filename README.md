# rails6_docker_template
Docker対応したRails6プロジェクトのテンプレート

# Setup
`docker-compose run app bundle exec rails webpacker:install`
`docker-compose run app bundle exec rails db:create && rails db:migrate`
`docker-compose up`

or

`make setup`

# master.key
`973be87b99ca36112c171c2d107bc56e`

こちらのkeyは公開されているので、もし使用する場合は`master.key`、`credentials.yml.enc`を削除したのち、`docker-compose run app bundle exec rails credentials:edit`すること。
