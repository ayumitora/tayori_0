# README

[たより]
概要
 あやふやになりがちな個人作家の
 顧客情報管理・活用できるコミュニケーションツール

コンセプト
 シンプルで顧客にも扱いやすいこと

バージョン
Ruby 2.6.3 Rails 5.2.3

機能一覧
 ログイン機能
 カスタマー、メーカー登録機能
 メールアドレス、名前、パスワードは必須
 パスワード再設定機能
 プロダクト覧表示機能
 プロダクト評価、コメント機能の編集、削除
 コメントや画像を他のカスタマーに公開、非公開選択可能(メーカーは閲覧可能)
 画像アップロード機能
 スコア付与機能
 平均評価を算出、表示する機能

カタログ設計
https://docs.google.com/document/d/19AosYsUj0ooqoORsVBs2iV-PVc_YHyEf7snmWLcTWgQ/edit?usp=sharing

テーブル定義
https://docs.google.com/spreadsheets/d/1Trpj_YWD2ZEqywT9loTRFLXdm9lxE9ZoBvwuuC_KGMo/edit?usp=sharing

カラム定義
https://docs.google.com/spreadsheets/d/1aXbMU4ErZDFsHpSgl0FdtkNYbrCzHLHk96YkrnVtOnU/edit?usp=sharing

UIflow
![tayori_UIflow](https://user-images.githubusercontent.com/44644840/67074967-3580de00-f1c5-11e9-957e-29b620f9dded.jpg)

ER図
https://cacoo.com/diagrams/prTwBJq4FXJuneGo-9F0C4.png
![ER図](https://user-images.githubusercontent.com/44644840/67244298-6185b300-f494-11e9-9b6d-3c4bcb26c7d6.png)


使用予定Gem
carrierwave
mini_magick
devise
raty
jquery-rails