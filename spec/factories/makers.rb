FactoryBot.define do
  factory :maker do
    name { 'メーカー１' }
    email { 'maker1@email.com' }
    password { 'password' }
    site_url { 'https://maker1.com' }
    logo { nil }
    image { nil }
    ivent { 'メーカー１イベントのおしらせ' }
  end
end
