# LangChain学習
- 書籍「ChatGPT/LangChainによるチャットシステム構築実践入門」に基づいたコード群です


## 事前準備
- Open AIに登録しAPI keyを発行しておく
- Open AIのクレジットが無ければチャージしておく
- PCに docker をインストールする
- 環境変数ファイルの設定
    1. .env_template をコピーし .env ファイルを作る
    1. .env ファイルの　`<Your Open AI API key>`　を自身のAPI keyで置き換える


## 実行方法
1. CLI(ターミナル, zsh, bash, powershell, コマンドプロンプト　等)でルートディレクトリに移動する
1. dockerコンテナ起動(初回はdocker imageのビルドが行われるので時間がかかる)
    ```shell
    docker compose up -d
    ```
1. ブラウザで下記URLにアクセス
    ```url
    http://localhost:8888
    ```
1. JupyterLabが開くので所望のNotebookを開いて実行する
1. dockerコンテナを終了する時は下記コマンドを実行
    ```shell
    docker compose down
    ```
