FROM php:7.2-fpm

# pgsqlのドライバーをコンテナ作成と同時にインストール
# apt-get updateでDebianをアップデート
RUN apt-get update \
    && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql pgsql

