# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Maker.create!(
#   name: "ぺーどろりーの",
#   email: "hinoayumi@gmail.com",
#   password: "tokitoki",
#   site_url: "https://peedrolino.official.ec",
#   overview: "踊りだしたい着心地で、身体と眺めの双方善くなる福の販売",
#   logo: open("#{Rails.root}/db/seed_fixtures/peedlo_logo.jpg"),
#   image: open("#{Rails.root}/db/seed_fixtures/54-280x280.jpg"),
#   ivent: "ただいま、お便りアプリを作成中です"
# )

# Product.create!(
#   maker_id: 1,
#   name: "宝ぶくろ",
#   price: 7000,
#   image: open("#{Rails.root}/db/seed_fixtures/54-280x280.jpg"),
#   season: "20017年ごろ"
# )

Maker.create!(
  [
    {
      name: "ぺーどろりーの",
      email: "hinoayumi@gmail.com",
      password: "tokitoki",
      site_url: "https://peedrolino.official.ec",
      overview: "踊りだしたい着心地で、身体と眺めの双方善くなる福の販売",
      logo: open("#{Rails.root}/db/seed_fixtures/peedlo_logo.jpg"),
      image: open("#{Rails.root}/db/seed_fixtures/54-280x280.jpg"),
      ivent: "ただいま、お便りアプリを作成中です"
    },
    {
      name: "あそかそぴあ",
      email: "asokasopia@gmail.com",
      password: "tokitoki",
      site_url: "https://asokasopia.buyshop.jp/",
      overview: "叡智の品々 お届けします。",
      logo: open("#{Rails.root}/db/seed_fixtures/asoka_logo.jpg"),
      image: open("#{Rails.root}/db/seed_fixtures/asoka_image.jpg"),
      ivent: "蒸篭のお問い合わせも受付中です。"
    }
  ]
)

Product.create!(
  [
    {
      maker_id: 1,
      name: "宝ぶくろ",
      price: 7000,
      image: open("#{Rails.root}/db/seed_fixtures/54-280x280.jpg"),
      season: "20017年ごろ"
    },
    {
      maker_id: 1,
      name: "餅T",
      price: 16000,
      image: open("#{Rails.root}/db/seed_fixtures/moti_1.jpg"),
      season: "20018年"
    },
    {
      maker_id: 2,
      name: "あそか石鹸（プレーン）",
      price: 2200,
      image: open("#{Rails.root}/db/seed_fixtures/soap_1.jpg"),
      season: "20017年ごろ"
    },
    {
      maker_id: 2,
      name: "ソマチッド",
      price: 17000,
      image: open("#{Rails.root}/db/seed_fixtures/soma_1.jpg"),
      season: "カンブリア紀以前"
    }
  ]
)

Customer.create!(
  [
    {
      display_name: "AYUMI",
      full_name: "荒井あゆみ",
      email: "ayumitora33@gmail.com",
      password: "tokitoki",
      icon: open("#{Rails.root}/db/seed_fixtures/ayumi.jpg"),
      score: "300",
      residence: "東京都"
    },
    {
      display_name: "YUKARI",
      full_name: "撫養ゆかり",
      password: "takumi",
      email: "yukaringo@gmail.com",
      icon: open("#{Rails.root}/db/seed_fixtures/ringo.jpg"),
      score: "20",
      residence: "大阪府"
    }
  ]
)
