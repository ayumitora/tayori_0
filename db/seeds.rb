Maker.create!(
  [
    {
      name: "ぺーどろりーの",
      email: "hinoayumi@gmail.com",
      password: "tokitoki",
      site_url: "https://peedrolino.official.ec",
      overview: "踊りだしたい着心地で、身体と眺めの双方善くなる福の販売",
      logo: open("#{Rails.root}/db/seed_fixtures/peedlo_logo.jpg"),
      image: open("#{Rails.root}/db/seed_fixtures/motimoti.jpg"),
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
      ivent: "現在クラウドファウンディングに挑戦しています。"
    },
    {
      name: "あどシスタ",
      email: "addsista@gmail.com",
      password: "addadd",
      site_url: "https://www.oddsista.com",
      overview: "姉妹で服つくってございます",
      logo: open("#{Rails.root}/db/seed_fixtures/add_logo.jpeg"),
      image: open("#{Rails.root}/db/seed_fixtures/add_top.jpeg"),
      ivent: "10/19.20.21は渋谷でDELI popupstore開催します!
              DELIお取り扱いブランドの秋冬アイテム、DELIオリジナルアイテム、
              noi 、古着、こども服をお持ちします🙋‍♀️是非遊びに来てください♡"
    },
    {
      name: "TAO XIANG UOO",
      email: "tao_xiang@gmail.com",
      password: "tao_xiang",
      site_url: "https://www.taoxianguoo.com",
      overview: "Jewelry since 2008 All are made by one person.
                目に見える造形物や 自然との対話
                ただ在る物を 象徴へ現す
                アイロニー ・ 循環 ・ 刷新",
      logo: open("#{Rails.root}/db/seed_fixtures/tao_xian_logo.jpg"),
      image: open("#{Rails.root}/db/seed_fixtures/tao_xian_top.jpg"),
      ivent: "emeraldthirteen 2020SS collection&spot sale meeting
              2019/9/15 ( sun ) 16 ( mon )"
    },
    {
      name: "ユニクロ",
      email: "uniqlo@gmail.com",
      password: "uniqlo",
      site_url: "https://www.uniqlo.com/jp/",
      overview: "LifeWearとは、2013年にユニクロが作った言葉です。あらゆる人の暮らしを、より豊かにすることを目指す、普通の服。",
      logo: open("#{Rails.root}/db/seed_fixtures/uniqlo_logo.jpg"),
      image: open("#{Rails.root}/db/seed_fixtures/uniqlo_top.jpg"),
      ivent: "台風19号被災地への衣料支援について
              この度の令和元年台風第19号により被災された皆様に、
              心よりお見舞い申し上げます。ファーストリテイリンググループは、
              今回の台風の被害に遭われた地域の皆様に、必要な衣料支援を行います。"
    },
    {
      name: "無印良品",
      email: "muji@gmail.com",
      password: "muzimuzi",
      site_url: "https://www.muji.com/",
      overview: "シンプルに美しく暮らす",
      logo: open("#{Rails.root}/db/seed_fixtures/muji_logo.jpg"),
      image: open("#{Rails.root}/db/seed_fixtures/muji_top.jpg"),
      ivent: "無印週間開催中です。"
    }
  ]
)

Product.create!(
  [
    {
      maker_id: 1,
      name: "宝ぶくろ",
      overview: "全て少しずつかたちの違う一点物ですが、レビューは全てこちらに投稿するようお願いします。",
      price: "5500~7000円",
      image: open("#{Rails.root}/db/seed_fixtures/takara.jpg"),
      season: "20017年ごろ"
    },
    {
      maker_id: 1,
      name: "餅T",
      overview: "素材や使用する記事幅によって価格がちがいます。
                 レビューの際は素材、色、幅などもご記入ください。",
      price: "8000~16000円",
      image: open("#{Rails.root}/db/seed_fixtures/moti_1.jpg"),
      season: "20018年"
    },
    {
      maker_id: 1,
      name: "足袋靴下",
      overview: "作り始めた当初は端布で作っていましたが、現在は靴下用に生地を仕入れているため価格が上がりました",
      price: "1800~2500円",
      image: open("#{Rails.root}/db/seed_fixtures/tabi.jpg"),
      season: "20010年〜"
    },
    {
      maker_id: 1,
      name: "ずた袋",
      overview: "デッドストックの帯生地で作成しています",
      price: "8000円",
      image: nil,
      # image: open("#{Rails.root}/db/seed_fixtures/zuta.jpg"),
      #この画像をherokuでdb:seedするとなぜかエラーがでてしまう
      season: "20017年"
    },
    {
      maker_id: 1,
      name: "反ずぼん",
      price: "17500~19000円",
      image: open("#{Rails.root}/db/seed_fixtures/unnamed.jpg"),
      season: "20017年"
    },
    {
      maker_id: 2,
      name: "あそか石鹸（プレーン）",
      price: "2200円",
      image: open("#{Rails.root}/db/seed_fixtures/soap_1.jpg"),
      season: "20017年ごろ"
    },
    {
      maker_id: 2,
      name: "ソマチッド",
      price: "17000円＋税",
      image: open("#{Rails.root}/db/seed_fixtures/soma_1.jpg"),
      season: "カンブリア紀以前"
    },
    {
      maker_id: 3,
      name: "スミセン靴下(丸先）",
      price: "2500円",
      image: open("#{Rails.root}/db/seed_fixtures/sox.jpg"),
      season: "2010"
    },
    {
      maker_id: 3,
      name: "５本指スミセン靴下",
      price: "3300円（税込）",
      image: open("#{Rails.root}/db/seed_fixtures/yubi_sox.jpg"),
      season: "2010"
    },
    {
      maker_id: 3,
      name: "もこもこスミセン靴下",
      price: "3000円",
      image: open("#{Rails.root}/db/seed_fixtures/moko_sox.jpg"),
      season: "2010"
    },
    {
      maker_id: 4,
      name: "フリルワンピース",
      overview: "着丈 127cm、身幅 50cm、大きなフリルがとてもCUTEなワンピースです。
                 色違いもこちらに評価を投稿してください。",
      price: "20000円(税込)",
      image: open("#{Rails.root}/db/seed_fixtures/add_one.jpg"),
      season: "2019"
    },
    {
      maker_id: 5,
      name: "「 4 」チェーン両耳ピアス",
      overview: "Silver925・鉱石( ペトリファイドウッドor 水晶or オニキス )",
      price: "未定(展示会場にて発表）",
      image: open("#{Rails.root}/db/seed_fixtures/tao_4p.jpg"),
      season: "emeraldthirteen 2020SS collection"
    },
    {
      maker_id: 5,
      name: "個展「ハーヒム」",
      overview: "建身:Jewelry  TAO XIANG UOO 出店:THE FLEA SHOP 水甕㸃点 ",
      price: "入場無料",
      image: open("#{Rails.root}/db/seed_fixtures/tao_her.jpg"),
      season: "2018 5 /12 ( 土 ) - 5 /15 ( 火 ) 時間  15：00 - 21 : 00/会場山本製菓"
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
      score: 80,
      residence: "東京都"
    },
    {
      display_name: "YUKARI",
      full_name: "撫養ゆかり",
      password: "takumi",
      email: "yukaringo@gmail.com",
      icon: open("#{Rails.root}/db/seed_fixtures/ringo.jpg"),
      score: 20,
      residence: "大阪府"
    },
    {
      display_name: "トッキ",
      full_name: "荒井斎澄",
      password: "tokitoki",
      email: "tokitoki@gmail.com",
      icon: open("#{Rails.root}/db/seed_fixtures/toki.jpg"),
      score: 0,
      residence: "東京都"
    },
    {
      display_name: "ねねさま",
      full_name: "渡辺恵子",
      password: "tokitoki",
      email: "keiko@gmail.com",
      icon: open("#{Rails.root}/db/seed_fixtures/keiko.jpeg"),
      score: 0,
      residence: "東京都葛飾区"
    },
    {
      display_name: "のぶお",
      full_name: "樋野信雄",
      password: "tokitoki",
      email: "nobuo@gmail.com",
      icon: open("#{Rails.root}/db/seed_fixtures/nobuo.jpeg"),
      score: 0,
      residence: "東京都葛飾区"
    }
  ]
)

Evaluate.create!(
  [
    {
      product_id: 1,
      customer_id: 2,
      rate: 3.5,
      image: open("#{Rails.root}/db/seed_fixtures/takatra_1.jpg"),
      content: "可愛いのですがあまり物は入りません。"
    },
    {
      product_id: 6,
      customer_id: 3,
      rate: 4.5,
      image: open("#{Rails.root}/db/seed_fixtures/asoka_sorp.jpg"),
      content: "生まれてすぐの頃から使用していますが、
                人より湿疹も少なくこれまで生きてこれました。おすすめです！"
    },
    {
      product_id: 11,
      customer_id: 1,
      rate: 5.0,
      image: open("#{Rails.root}/db/seed_fixtures/na_add.jpeg"),
      content: "色違いでピンクを持っています！可愛くてお気に入りですでもちょっと怖くてまだ洗濯できません"
    },
    {
      product_id: 11,
      customer_id: 2,
      rate: 3.0,
      image: nil,
      content: "私には派手だったようなのでどなたかにお譲りしたいと考えています。プロダクト画像と同じ色です。
                欲しい方はメルカリで検索して見つけていただくか、こちらにコメントください。"
    },
    {
      product_id: 13,
      customer_id: 1,
      rate: 2.5,
      image: open("#{Rails.root}/db/seed_fixtures/her_him.jpg"),
      content: "たまたま大阪にいたので観にいきました。アクセサリーは大好きですが、この会場は暗くて少し怖くかった印象です。"
    },
    {
      product_id: 3,
      customer_id: 1,
      rate: 2.0,
      content: "端切れで作っていた頃の狂ったような布の組み合わせではなくなり、少し残念です"
    },
    {
      product_id: 3,
      customer_id: 5,
      rate: 3.0,
      content: "派手なデザインでメンズサイズがあるのが珍しいのでよく買っています。"
    },
    {
      product_id: 10,
      customer_id: 5,
      rate: 5.0,
      image: open("#{Rails.root}/db/seed_fixtures/sumi_moko.jpg"),
      content: "血行がよくなり冷えが改善されます。飛行機に乗るときにも最適です、このもこもこのタイプはかなり長持ちします。"
    }
  ]
)

MakerComment.create!(
  [
    {
      evaluate_id: 1,
      maker_id: 3,
      content: "ご意見ありがとうございます。小さなお守りやお薬等入れていただき、
                お部屋に飾る等が用途になるかと思います。"
    },
    {
      evaluate_id: 3,
      maker_id: 4,
      content: "手押し洗いで弱く脱水し、シワを伸ばして干していただけると、フリルもへたらないと思います！"
    },
    {
      evaluate_id: 5,
      maker_id: 5,
      content: "その節はご来場いただきまことにありがとうございました。あの日は雨が降っていて余計暗かったですね...次は明るい場所にしますw"
    },
    {
      evaluate_id: 8,
      maker_id: 3,
      content: "ご愛用いただき誠にありがとうございます。新色の発売予定がありますので追ってお知らせさせていただきます。"
    }
  ]
)

CustomerComment.create!(
  [
    {
      evaluate_id: 1,
      customer_id: 3,
      content: "僕的にはトミカが入れば十分なので大切に持ち歩きたい日などに重宝しています。"
    },
    {
      evaluate_id: 1,
      customer_id: 1,
      content: "私は薬入れにしています。時々イヤホンや充電器なんかも入れています。"
    },
    {
      evaluate_id: 2,
      customer_id: 2,
      content: "購入を検討しているのですが、内容量は値段相応だと思いますか？"
    },
    {
      evaluate_id: 2,
      customer_id: 3,
      content: "結構長持ちします。でも髪の長い方だと減るのが早いかもしれません。"
    },
    {
      evaluate_id: 3,
      customer_id: 1,
      content: "案内いただいた方法で洗濯しましたが大丈夫でした！綺麗になってさっぱりしました。"
    },
    {
      evaluate_id: 3,
      customer_id: 4,
      content: "私も洗濯どうしようかと思っていましたがここに書いてあり助かりました。"
    },
    {
      evaluate_id: 5,
      customer_id: 1,
      content: "とんでもないです。ぜひお好きな場所で開催してください。"
    },
    {
      evaluate_id: 5,
      customer_id: 5,
      content: "イベントでよくお会いしますね。次の場所も怖そうだったら一緒に行きませんか？"
    },
    {
      evaluate_id: 7,
      customer_id: 5,
      content: "使い続けているとメンズ向けには少し耐久性が弱いと感じましたので、星一つ減らしました"
    },
    {
      evaluate_id: 7,
      customer_id: 3,
      content: "生地によって強いもの、弱いものにばらつきがありそうです。当然といえばそうですが。。。"
    }
  ]
)