require 'rails_helper'

RSpec.describe Product, type: :model do
  require 'rails_helper'

  before do
    @maker = FactoryBot.create(:maker)
  end

  it 'プロダクト新規登録' do
    product = Product.new(
      name: "プロダクト１",
      price: "5500~6000円",
      image: open("#{Rails.root}/db/seed_fixtures/takara.jpg"),
      season: "20017.ss",
      maker_id: @maker.id
    )
    expect(product).to be_valid
  end

  it 'nameが未入力だと登録できない' do
    product = Product.new(
      name: nil,
      price: "5500~6000円",
      image: open("#{Rails.root}/db/seed_fixtures/takara.jpg"),
      season: "20017.ss",
      maker_id: @maker.id
    )
    expect(product).to be_invalid
  end

end
