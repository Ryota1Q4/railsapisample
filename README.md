# railsapisample
For learning Rails
学習用Rails API作成（自分用メモ）

### 環境作成手順
1. Dockerファイル作成
2. docker-compose.ymlファイル作成
3. GemfileとGemfile.lockを作成
4. 下記コマンドを実行して、Railsのスケルトンと、MySQL DBを起動。途中、Gemfileを更新する旨、聞かれるのでY押下。
```
docker-compose run app rails new . --api -T
```

上記実行後、作られたイメージとコンテナ確認
```
docker images
 (sampleapp, mysql, rubyのイメージが作成されている)
 
docker ps -a
 (rails newが実行されたコンテナ（exit済）と、継続実行中mysqlコンテナが作成される)
```


参考リンク
1. Docker上にRails環境作成
https://qiita.com/azul915/items/5b7063cbc80192343fc0

2. RailsでRest API作成
https://qiita.com/yyh-gl/items/30bd91c2b33fdfbe49b5
