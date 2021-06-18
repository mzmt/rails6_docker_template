up:
	@docker-compose up

setup:
	@docker-compose build
	@docker-compose run app yarn install
	@docker-compose run app bundle exec rails webpacker:install
	@docker-compose run app bundle exec rails db:create && rails db:migrate

build:
	@docker-compose up --build

migrate:
	@docker-compose run app bundle exec rails db:migrate
