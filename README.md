## 個人制作アプリ My client
  ### &emsp;My clientは、ユーザーの必要に応じて情報登録フォームの追加ができる顧客管理アプリです。
  | root | 顧客一覧 |
  |------|----------|
  |<img width="1440" alt="スクリーンショット 2021-01-21 18 38 31" src="https://user-images.githubusercontent.com/73294620/105332392-eb807680-5c17-11eb-8709-c642d67be689.png">|<img width="1440" alt="スクリーンショット 2021-01-21 18 39 54" src="https://user-images.githubusercontent.com/73294620/105332538-15399d80-5c18-11eb-89d5-c664e5c7f914.png">|

  | 顧客詳細 上部 | 顧客詳細 上部 |
  |---------------|---------------|
  |<img width="1440" alt="スクリーンショット 2021-01-21 18 41 31" src="https://user-images.githubusercontent.com/73294620/105332851-66499180-5c18-11eb-839f-802e03494cdb.png">|<img width="1439" alt="スクリーンショット 2021-01-21 18 42 01" src="https://user-images.githubusercontent.com/73294620/105332864-6c3f7280-5c18-11eb-97ec-04b705cf9ab2.png">|

  | 顧客詳細 下部 | 顧客詳細 下部 |
  |---------------|---------------|
  |<img width="1440" alt="スクリーンショット 2021-01-21 18 44 01" src="https://user-images.githubusercontent.com/73294620/105333098-add01d80-5c18-11eb-8f1f-a5e59313d430.png">|<img width="1440" alt="スクリーンショット 2021-01-21 18 44 08" src="https://user-images.githubusercontent.com/73294620/105333129-b7598580-5c18-11eb-9810-80ca4ab58c1c.png">|

  | 1週間のタスク一覧＆タスク作成 | 全タスク一覧 |
  |-------------------------------|--------------|
  |<img width="1440" alt="スクリーンショット 2021-01-21 18 49 31" src="https://user-images.githubusercontent.com/73294620/105336335-78c5ca00-5c1c-11eb-82dc-b05e99a98232.png">|<img width="1440" alt="スクリーンショット 2021-01-21 19 10 46" src="https://user-images.githubusercontent.com/73294620/105336387-854a2280-5c1c-11eb-9e62-20c504a35502.png">|
<br />

## 本番環境(heroku) &emsp;https://myclient.herokuapp.com/ 
  ### &emsp;&emsp;メールアドレス: mytest@gmail.com
  ### &emsp;&emsp;パスワード: test3810
<br />

## アイデア
  ### ■「こんな入力フォームがあれば...」
   #### &emsp;前職で利用していた顧客管理アプリの既存の入力フォームだけでは、管理したい情報がカバーできていませんでした。<br>&emsp;また、各顧客詳細ページへの遷移は一旦、顧客一覧画面を介する必要があり、連続して各顧客へ情報登録をしたい時などに使いづらさを感じていました。<br>&emsp;必要に応じて自分でフォームを追加してカスタマイズできたり、一覧を介さずに各顧客詳細ページ間の移動ができるアプリがあれば便利だろうなあ、自分で作ってみよう！と思いました。
  ### ■ターゲット
   #### &emsp;ターゲットは何かしらのエンド顧客を扱う職業の社会人。<br>&emsp;その中でも、顧客ごとに必ず登録しておきたい情報があるが、現在利用している顧客管理アプリにはその情報の入力フォームが無いため、備考欄などに追記する形で対応している人たち。<br>&emsp;不動産や美容師..etc
<br />

## このアプリで得られる体験
  #### &emsp;必要に応じて入力フォームの追加と編集ができます。
  #### &emsp;顧客の詳細ページから直接、次の顧客や前の顧客の詳細ページに遷移できます。
  #### &emsp;トップページにその日のタスクが表示されるので、やらなければならない事がすぐにわかります。
<br />

## 実装を完了した機能
  #### &emsp;(1) サインアップ, サインイン, ログアウト機能(devise)
  #### &emsp;(2) 顧客の新規登録, 編集, 削除, 一覧表示機能, 各顧客詳細ページ間での遷移機能
  #### &emsp;(3) 追加フォームの新規登録, 編集機能
  #### &emsp;(3) 追加フォームへの情報登録, 編集機能
  #### &emsp;(4) タスクの新規登録, 削除機能, 一覧表示機能, その日のタスクをトップページに表示する機能
  #### &emsp;(5) テストの実施（model)<br>&emsp;&emsp;RSpec、factory_bot使用
<br />

## 今後実装予定の機能, 仕様
  #### 自身の構想の他に、知人,友人,前職の同僚などにこのアプリを使ってもらい、そのフィードバックから得たアイデアも含まれています。
  #### &emsp;●顧客の検索機能。<br>&emsp;&emsp;→ヘッダー部分に検索フォームを設置予定。名前だけでなく、携帯番号やメールアドレスでも検索ができるように実装。
  #### &emsp;●各顧客詳細ページにおいて、画像投稿機能。<br>&emsp;&emsp;→画像とその画像のタイトルを保存できるだけでも、接客記録の幅が広がるため。
  #### &emsp;●タスクの横に完了ボタンを表示させ、クリックするとそのタスクを非表示にする仕様。<br>&emsp;&emsp;→残りのタスクを明確にするため、ユーザーのモチベーションに繋げるため。
  #### &emsp;●全タスク一覧画面において、完了済みのタスクにはチェックマークを表示させる仕様。<br>&emsp;&emsp;→全タスクで見たときに、意識しなければならないタスクを明確にするため。
  #### &emsp;●AWSでデプロイ, Dockerの導入
<br />

## 使用言語技術
  #### 言語・フレームワーク<br>&emsp;&emsp;ruby 2.6.5/ rails 6.0.0
  #### フロント<br>&emsp;&emsp;HTML/ CSS/ JavaScript/ 
  #### データベース<br>&emsp;&emsp;MySQL2 0.5.3
  #### テスト<br>&emsp;&emsp;RSpec/ factory_bot
  #### 使用Gem<br>&emsp;&emsp;pry-rails/ devise/ rails-i18n<br>&emsp;&emsp; active_hash/ rubocop<br>&emsp;&emsp;factory_bot_rails/ rspec-rails
<br />

## テーブル設計

### users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| encrypted_password | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_kana          | string | null: false |
| first_kana         | string | null: false |

#### Association
- has_one  :form
- has_many :clients

### clients テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| last_name          | string     | null: false                    |
| first_name         | string     | null: false                    |
| last_kana          | string     | null: false                    |
| first_kana         | string     | null: false                    |
| email              | string     | null: false                    |
| phone_num          | string     | null: false                    |
| post_num           | string     |                                |
| prefecture         | string     |                                |
| city               | string     |                                |
| details            | string     |                                |
| build_num          | string     |                                |
| birthday           | date       |                                |
| user               | references | null: false, foreign_key: true |

#### Association
- belongs_to :user
- has_one :addinfos
- has_many :tasks

### forms テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| f_name1            | string     |                                |
| f_name2            | string     |                                |
| f_name3            | string     |                                |
| f_name4            | string     |                                |
| f_name5            | string     |                                |
| f_name6            | string     |                                |
| f_name7            | string     |                                |
| f_name8            | string     |                                |
| f_name9            | string     |                                |
| f_name10           | string     |                                |
| user               | references | null: false, foreign_key: true |

#### Association
- belongs_to :user
- has_many :clients

### addinfos テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| add_text1          | string     |                                |
| add_text2          | string     |                                |
| add_text3          | string     |                                |
| add_text4          | string     |                                |
| add_text5          | string     |                                |
| add_text6          | string     |                                |
| add_text7          | string     |                                |
| add_text8          | string     |                                |
| add_text9          | string     |                                |
| add_text10         | string     |                                |
| client             | references | null: false, foreign_key: true |

#### Association
- belongs_to :client

### tasks テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| task               | string     | null: false                    |
| date               | date       | null: false                    |
| redirect           | integer    |                                |
| client             | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |

#### Association
- belongs_to :client
<br />

## ER図
<img width="653" alt="スクリーンショット 2021-01-04 23 03 24" src="https://user-images.githubusercontent.com/73294620/103543008-275dd100-4ee1-11eb-8d54-1689fbc0db35.png">
<br />
<br />
<br />

## 連絡先
  #### &emsp;宮本 良輝<br>yo5shi2ki8@yahoo.co.jp

