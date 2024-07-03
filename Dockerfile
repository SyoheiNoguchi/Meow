FROM ruby:3.2.0

# Node.jsとYarnのインストール
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get update && \
    apt-get install -y nodejs default-mysql-client && \
    npm install -y --global yarn && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /myapp

# GemfileとGemfile.lockを先にコピーしてbundle install
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

# アプリケーションのソースコードをコピー
COPY . /myapp

# Yarnパッケージのインストール
RUN yarn install --check-files

# entrypoint.shの設定
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

# CMD ["rails", "server", "-b", "0.0.0.0"]
CMD ["bin/dev"]
