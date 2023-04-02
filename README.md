# discord-sitteru

[![apply](https://github.com/exphh/discord-sitteru/actions/workflows/apply.yaml/badge.svg)](https://github.com/exphh/discord-sitteru/actions/workflows/apply.yaml)

## これなに？

PHH砂場のDiscordサーバーのterraform管理リポジトリです。

## セットアップ
1. このリポジトリをcloneしてください `git clone git@github.com:exphh/discord-sitteru.git && cd discord-sitteru`
1. `terraform init` を実行します

## 権限を追加する

1. `git checkout -b xxx`でブランチを作ってください。
1. [main.tf](./main.tf) を参考にしてroleとpermisionsを追加します。
1. 保存したら `terraform fmt --recursive` を実行してコードスタイルを整えてください
1. `git commit -m 変更の内容` で変更をcommitします
1. `git push origin HEAD` でbranchをremoteにpushしてください。
1. pushし終わったらGitHubのリポジトリページからNew Pull Requestでpull-requestを作成してください。
1. planされ問題がなければmainブランチに変更が取り込まれます。また、取り込まれた時にDiscordに設定が反映されます


## terraformで管理されているリソース

このリポジトリで管理されているリソースは次の通りです。

| リソース名             | 管理状況 | 招来的にやりたいかどうか |
|-----------------------|----------|-------------------------|
| メンバーに付与されているロール | :x:      | :o:                     |
| ロール                    | :o:      | :o:                     |
| 鯖のアイコン                | :o:      | :o:                     |
| サーバー設定                | :o:      | :o:                     |
