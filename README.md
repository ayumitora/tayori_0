# README

[たより]
概要
 あやふやになりがちな個人作家の
 顧客情報管理・活用できるコミュニケーションツール

コンセプト<br>
 シンプルで顧客にも扱いやすいこと

バージョン<br>
Ruby 2.6.3 Rails 5.2.3

機能一覧<br>
 deviseによるログイン機能（就業コース技術）<br>
 カスタマー、メーカー登録機能<br>
 メールアドレス、名前、パスワードは必須<br>
 パスワード再設定機能<br>
 プロダクト覧表示機能<br>
 プロダクト評価、コメント機能の編集、削除<br>
 氏名やコメントは一般非公開<br>
 画像アップロード機能<br>
 スコア付与機能<br>
 スコアが一定以上たまるとメーカーに通知（就業コース技術）<br>
 平均評価を算出、表示する機能<br>
 ５段階星評価機能（外部技術）

カタログ設計<br>
https://docs.google.com/document/d/19AosYsUj0ooqoORsVBs2iV-PVc_YHyEf7snmWLcTWgQ/edit?usp=sharing

テーブル定義<br>
https://docs.google.com/spreadsheets/d/1Trpj_YWD2ZEqywT9loTRFLXdm9lxE9ZoBvwuuC_KGMo/edit?usp=sharing

カラム定義<br>
https://docs.google.com/spreadsheets/d/1aXbMU4ErZDFsHpSgl0FdtkNYbrCzHLHk96YkrnVtOnU/edit?usp=sharing

UIflow<br>
![tayori_UIflow](https://user-images.githubusercontent.com/44644840/67074967-3580de00-f1c5-11e9-957e-29b620f9dded.jpg)

ER図<br>
https://cacoo.com/diagrams/prTwBJq4FXJuneGo-9F0C4.png
![ER図](https://user-images.githubusercontent.com/44644840/67244298-6185b300-f494-11e9-9b6d-3c4bcb26c7d6.png)


使用予定Gem<br>
carrierwave<br>
mini_magick<br>
devise<br>
raty<br>
jquery-rails