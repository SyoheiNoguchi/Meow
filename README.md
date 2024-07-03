# Meow

Rails 練習用アプリ

## 構築手順

1. docker compose build --no-cache
2. docker compose up -d
3. docker compose run app bundle exec rails db:create
4. docker compose run app bundle exec rails db:migrate
5. docker compose run app bundle exec rails db:seed
