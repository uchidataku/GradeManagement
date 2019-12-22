# Railsコンテナ用Dockerfile

# イメージのベースラインにRuby2.5.1を指定
FROM ruby:2.5.1
# Railsに必要なパッケージをインストール
RUN apt-get update -qq && apt-get install -y build-essential nodejs
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
&& apt-get install -y nodejs
# ルートディレクトリを作成
RUN mkdir /myapp
# 作業ディレクトリを指定
WORKDIR /myapp
# ローカルのGemfileとGemfile.lockをコピー
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
# Gemのインストール実行
RUN bundle install
# ローカルをコピー
COPY . /myapp
