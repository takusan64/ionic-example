# Get Started

## Start Development

```sh
# 初回実行時のみ
docker-compose build

# アプリの起動
docker-compose up
```

# Build Native Application

```sh
# IOS / Android 両方ビルド
docker run --rm -w "/app" -v "${PWD}:/app" node:16.15.1-buster-slim npm run build

# IOSのみビルド
docker run --rm -w "/app" -v "${PWD}:/app" node:16.15.1-buster-slim npm run build:ios

# Andriodのみビルド
docker run --rm -w "/app" -v "${PWD}:/app" node:16.15.1-buster-slim npm run build:android
```