# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Maker.create(
  name: "ぺーどろりーの",
  email: "hinoayumi@gmail.com",
  password: "tokitoki",
  site_url: "https://peedrolino.official.ec",
  overview: "踊りだしたい着心地で、身体と眺めの双方善くなる福の販売",
  logo: open("#{Rails.root}/db/seed_fixtures/peedlo_logo.jpg"),
  image: open("#{Rails.root}/db/seed_fixtures/54-280x280.jpg"),
  ivent: "ただいま、お便りアプリを作成中です"
)

Product.create(
  maker_id: 1,
  name: "宝ぶくろ",
  price: 7000,
  image: open("#{Rails.root}/db/seed_fixtures/54-280x280.jpg"),
  season: "20017年ごろ"
)