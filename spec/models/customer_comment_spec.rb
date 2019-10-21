require 'rails_helper'

RSpec.describe CustomerComment, type: :model do
  before do
    @evaluate = FactoryBot.create(:evaluate)
    # @customer = FactoryBot.create(:customer)
  end

  it 'メーカーコメント新規登録' do
    customer_comment = CustomerComment.new(
      evaluate_id: @evaluate.id,
      customer_id: 1,
      content: 'メーカーからのコメントを登録するテスト',
    )
    expect(customer_comment).to be_valid
  end

  it 'contentが空欄のままカスタマーコメントを登録できない' do
    customer_comment = CustomerComment.new(
      evaluate_id: @evaluate.id,
      customer_id: 1,
      content: nil,
    )
    expect(customer_comment).to be_invalid
  end

end
