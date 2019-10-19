FactoryBot.define do
  factory :customer do
    full_name { '開発テス子' }
    display_name { 'デベロップテス子' }
    email { 'customer1@email.com' }
    password { 'password' }
    icon { nil }
    score { 40 }
    residence { '東京都' }
  end
end
