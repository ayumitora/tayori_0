require 'rails_helper'

RSpec.describe Evaluate, type: :model do
  before do
    @product = FactoryBot.create(:product)
    @customer = FactoryBot.create(:customer)
  end

  it '評価の新規登録ができる' do
    evaluate = Evaluate.new(
      product_id: @product.id,
      customer_id: @customer.id,
      rate: 4.0,
      image: open("#{Rails.root}/db/seed_fixtures/takatra_1.jpg"),
      content: '感想を投稿するテスト'
    )
    expect(evaluate).to be_valid
  end

  it 'content(感想）を入れないと登録できない' do
    evaluate = Evaluate.new(
      product_id: @product.id,
      customer_id: @customer.id,
      rate: 4.0,
      image: open("#{Rails.root}/db/seed_fixtures/takatra_1.jpg"),
      content: nil
    )
    expect(evaluate).to be_invalid
  end

  it '同じカスタマーで同じプロダクトを２度評価することはできない' do
    evaluate = Evaluate.new(
      product_id: @product.id,
      customer_id: @customer.id,
      rate: 4.0,
      image: open("#{Rails.root}/db/seed_fixtures/takatra_1.jpg"),
      content: '感想を投稿するテスト1'
    )
    second_evaluate = Evaluate.new(
      product_id: @product.id,
      customer_id: @customer.id,
      rate: 3.0,
      image: open("#{Rails.root}/db/seed_fixtures/tabi.jpg"),
      content: '感想を投稿するテスト2'
    )
    expect(second_evaluate).to be_valid
  end
end
