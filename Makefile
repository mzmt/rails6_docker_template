up:
	@docker-compose up

setup:
	@yarn install
	@docker-compose run app bundle exec rails webpacker:install
	@docker-compose run app bundle exec rails db:create && rails db:migrate
	@docker-compose up

migrate:
	@docker-compose run app bundle exec rails db:migrate
