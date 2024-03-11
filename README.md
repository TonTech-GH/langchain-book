# LangChain学習
- 書籍「ChatGPT/LangChainによるチャットシステム構築実践入門」に基づいたコード群です

---
## 事前準備
- Open AIに登録しAPI keyを発行しておく
- Open AIのクレジットが無ければチャージしておく

---
## Google Colaboratoryで実行する場合
1. Notebook(.ipynb)をColabにアップロード
1. Colabの先頭セルで以下を実行する
```python
# Colab上に無いPythonパッケージのインストール
!pip install \
    openai==1.12.0 \
    langchain==0.1.9 \
    langchain-openai==0.0.7 \
    langchain-experimental==0.0.53 \
    chromadb==0.3.29 \
    GitPython

# Open AI API Keyを環境変数に設定
import os
os.environ['OPENAI_API_KEY'] = '<Your Open AI API key>'
```

---
## Dockerで実行する場合
#### 事前準備
- PCに docker をインストールする
- 環境変数ファイルの設定
    1. .env_template をコピーし .env ファイルを作る
    1. .env ファイルの　`<Your Open AI API key>`　を自身のAPI keyで置き換える


#### 実行方法
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
