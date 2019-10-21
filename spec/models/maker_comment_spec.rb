require 'rails_helper'

RSpec.describe MakerComment, type: :model do
  before do
    @evaluate = FactoryBot.create(:evaluate)
    # @maker = FactoryBot.create(:maker)
  end

  it 'メーカーコメント新規登録' do
    maker_comment = MakerComment.new(
      evaluate_id: @evaluate.id,
      maker_id: 1,
      content: 'メーカーからのコメントを登録するテスト',
    )
    expect(maker_comment).to be_valid
  end

  it 'contentが空欄のままメーカーコメントを登録できない' do
    maker_comment = MakerComment.new(
      evaluate_id: @evaluate.id,
      maker_id: 1,
      content: nil,
    )
    expect(maker_comment).to be_invalid
  end

end
