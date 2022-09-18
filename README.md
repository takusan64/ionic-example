# Get Started

- Node: 16.17.0
- Ionic: 6.20.1

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
docker run --rm -w "/app" -v "${PWD}:/app" . npm run build

# IOSのみビルド
docker run --rm -w "/app" -v "${PWD}:/app" . npm run build:ios

# Andriodのみビルド
docker run --rm -w "/app" -v "${PWD}:/app" . npm run build:android
```