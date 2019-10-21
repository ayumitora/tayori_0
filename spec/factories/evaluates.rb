FactoryBot.define do
  factory :evaluate do
    rate { '3.5' }
    image { nil }
    content { 'ファクトリーボットで作成された評価の感想文' }
    product
    customer
  end
end
