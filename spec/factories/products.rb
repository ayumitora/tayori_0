FactoryBot.define do
  factory :product do
    name { 'プロダクト１' }
    price { '参考上代' }
    image { nil }
    season { '令和元年・夏' }
    maker
  end
end
