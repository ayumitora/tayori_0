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
      image: open("#{Rails.root}/db/seed_fixtures/motimoti.png"),
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
    },
    {
      name: "須弥山",
      email: "syumisen@gmail.com",
      password: "syumisen",
      site_url: "https://woodypalace.thebase.in",
      overview: "良質な超長綿から生まれた「綿由来の天然の炭素繊維」を使用した
                「SUMISEN®」と言うブランドにて「人や環境にやさしい身につける炭製品」
                の国産オリジナル商品展開をしております。
                「炭」の持つ優れた機能や効果を化学薬品を一切使用せずに肌で感じる事ができる素材です。
                全てにおいて専門検査機関からの試験データを取っており、安心、安全、快適な機能をご提供致します。
                ぜひSUMISEN®を体感して頂きますようよろしくお願い申し上げます。",
      logo: open("#{Rails.root}/db/seed_fixtures/sumisen_web.jpg"),
      image: open("#{Rails.root}/db/seed_fixtures/cotton.jpg"),
      ivent: "クラウドファウンディングに挑戦しています。"
    }
  ]
)

Product.create!(
  [
    {
      maker_id: 1,
      name: "宝ぶくろ",
      price: 7000,
      image: open("#{Rails.root}/db/seed_fixtures/takara.jpg"),
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
      maker_id: 1,
      name: "足袋靴下",
      price: 2500,
      image: open("#{Rails.root}/db/seed_fixtures/tabi.jpg"),
      season: "20010年〜"
    },
    {
      maker_id: 1,
      name: "反ずぼん",
      price: 19000,
      image: open("#{Rails.root}/db/seed_fixtures/unnamed.jpg"),
      season: "20017年"
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
    },
    {
      maker_id: 3,
      name: "スミセン靴下(丸先）",
      price: 2500,
      image: open("#{Rails.root}/db/seed_fixtures/sox.jpg"),
      season: "2010"
    },
    {
      maker_id: 3,
      name: "５本指スミセン靴下",
      price: 3000,
      image: open("#{Rails.root}/db/seed_fixtures/yubi_sox.jpg"),
      season: "2010"
    },
    {
      maker_id: 3,
      name: "もこもこスミセン靴下",
      price: 3000,
      image: open("#{Rails.root}/db/seed_fixtures/moko_sox.jpg"),
      season: "2010"
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
    },
    {
      display_name: "TOKI",
      full_name: "荒井斎澄",
      password: "tokitoki",
      email: "tokitoki@gmail.com",
      icon: open("#{Rails.root}/db/seed_fixtures/toki.jpg"),
      score: "0",
      residence: "東京都"
    }
  ]
)

Evaluate.create!(
  [
    {
      product_id: 1,
      customer_id: 1,
      rate: 3.5,
      image: open("#{Rails.root}/db/seed_fixtures/fukuro_naka.jpg"),
      content: "可愛いのですがあまり物は入りません。"
    }
  ]
)

MakerComment.create!(
  [
    {
      evaluate_id: 1,
      maker_id: 1,
      content: "ご意見ありがとうございます。小さなお守りやお薬等入れていただき、
                お部屋に飾る等が用途になるかと思います。"
    }
  ]
)