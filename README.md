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
※`Start Development`完了後に、以下の実行を行ってください。

```sh
# IOSビルド
## Step1：以下を実行
docker run --rm -w "/app" -v "${PWD}:/app" ionic-example-web npm run build:ios

## Step2: エラーが出る場合、コンテナ内で以下を実行(Mac M1限定の障害？)
## https://forum.ionicframework.com/t/new-project-with-capacitor-wont-sync/219627
docker-compose exec web /bin/sh
cd /app/ios/App
pod install --allow-root

# Andriodビルド
## Step1：以下を実行
docker run --rm -w "/app" -v "${PWD}:/app" ionic-example-web npm run build:android
```
作成された各アプリを`XCode`,`Android Studio'で開くことで、シュミレーターから確認できます。


# 参考
- [M1 Macでpod installが失敗する問題の解決法]（https://toritakashi.com/archives/2307）