# python+mongo+mongo-express

## 方針
1. WSL2上のdockerでpython+mongo+mongo-express環境を構築する

## 今回やったこと
1. 引用1.で書かれているpython, node, dockerを追加（ruby,openjdk,php,awsは今回追加していない）<br>
  もし、homebrewが上手くインストールできなく再インストールする場合、引用3.を参照
2. pythonはpython 3.8.10をインストール
3. nodeはnode 16.10.0をインストール(yarnは1.22.17. gulpは2.3.0)
4. 引用4.にしたがって、python+mongo+mongo-express環境構築を実施 <br>
  ただし、dockerコマンドが通らなくなることがあり、そのときは引用5.を確認。
  .bashrcにfix_wsl2_interop関数を定義。fix_wsl2_interopをたたけば通るようになる

## dockerfile起動
* `docker-compose up -d`
* http://localhost:27017 にアクセスすると、mongo-expressの画面が見られる
* 以下のコマンドを打ち、flaskコンテナの中に入り、app.pyを実行する。（なぜかDockerfileに実行文書いているが実行されない）
```
docker-compose exec flask bash
python /app/src/app.py
```
* curl localhost:8000/ を打つと、メッセージが返ってくることでAPI起動が確認できる

## 引用
### 前回より参考にしたサイトリスト
1. https://qiita.com/amenoyoya/items/ca9210593395dbfc8531
2. https://www.youtube.com/watch?v=0iB5IPoTDts
3. https://github.com/Homebrew/brew/issues/10368
4. https://qiita.com/Takuro-Researcher/items/67ed50010b4d3ab78736
5. https://qiita.com/iwaiktos/items/33ab69a42c3a1cc35dfb

## メモ



