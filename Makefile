rails console:
	docker compose run app bundle exec rails console

rspec:
	docker compose run app bundle exec bin/rspec

rubocop:
	docker compose run app bundle exec rubocop

db_seed:
	docker compose run app bundle exec rails db:seed