# phoenix-exrm-test
phoenixでリリースパッケージの作成・稼働テスト

# 初期設定
```bash
mix phoenix.new exrmtest --no-brunch --no-ecto
cd exrmtest

vi mix.exs

mix deps.get
mix compile
mix phoenix.server
# → port4000に接続できることを確認
```

# prod環境の作成
```bash
vi config/prod.exs
# ※server: true を忘れると起動しないので注意

export MIX_ENV=prod
mix deps.get --only prod
mix compile
mix phoenix.digest
mix release
```

- rel/exrmtest/releases/0.0.1/exrmtest.tar.gz を稼働サーバにコピー
- tarball の展開

## 実行

```bash
bin/exrmtest ping
bin/exrmtest start
bin/exrmtest ping

# → port4000に接続できることを確認
```

# stg環境の作成
```bash
export MIX_ENV=stg
mix deps.get --only stg
mix compile
mix phoenix.digest
mix release
```

