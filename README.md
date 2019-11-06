# [TAYORI]
## 概要
 個人作家の作品・品物に対し、購入者達のレビューやコメント、使用例、経年変化などの情報を顧客間や作り手とやりとりできるアプリ。
 作り手の自己満足、かつ あやふやになりがちな顧客情報や満足度情報の管理・活用が可能になるコミュニケーションツールです。

## コンセプト<br>
 - シンプルで色々な作品形態に対応できること<br>
 - 顧客にも扱いやすいこと<br>
 - SNSとは違い、ある程度クローズドな場であること。

## バージョン<br>
Ruby 2.6.3<br>
Rails 5.2.3

## 機能一覧<br>
- deviseによるログイン機能<br>
  - カスタマー、メーカー認証機能<br>
  - メールアドレス、氏名orメーカー名、パスワード必須<br>
  - パスワード再設定機能<br>
- カスタマーが該当プロダクトを探しやすい画面遷移<br>
- メーカーのプロダクトを評価しているカスタマーの一覧
- 画像アップロード機能<br>
- 星５段階評価機能で視覚的に評価
  - 同一プロダクトに対するカスタマー達の平均評価を算出し表示<br>
- プロダクトの評価に対し、メーカだけでなく他カスタマーもコメントできる<br>
- カスタマーの氏名やコメントのやりとりは一般非公開<br>
- 投稿に応じてカスタマーにスコアを付与<br>
  - スコアが一定以上たまるとメーカーに通知<br>

## カタログ設計<br>
https://docs.google.com/document/d/19AosYsUj0ooqoORsVBs2iV-PVc_YHyEf7snmWLcTWgQ/edit?usp=sharing

## テーブル定義<br>
https://docs.google.com/spreadsheets/d/1Trpj_YWD2ZEqywT9loTRFLXdm9lxE9ZoBvwuuC_KGMo/edit?usp=sharing

## カラム定義<br>
https://docs.google.com/spreadsheets/d/1aXbMU4ErZDFsHpSgl0FdtkNYbrCzHLHk96YkrnVtOnU/edit?usp=sharing

## UIflow<br>
![tayori_UIflow](https://user-images.githubusercontent.com/44644840/67074967-3580de00-f1c5-11e9-957e-29b620f9dded.jpg)

## ER図<br>
https://cacoo.com/diagrams/prTwBJq4FXJuneGo-9F0C4.png
![ER図](https://user-images.githubusercontent.com/44644840/67244298-6185b300-f494-11e9-9b6d-3c4bcb26c7d6.png)


## 使用Gem<br>
carrierwave<br>
mini_magick<br>
devise<br>
jquery-rails<br>
rspec-rails<br>
slim-rails<br>

## 星５段階評価プラグイン
jQuery Raty