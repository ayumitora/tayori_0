require 'rails_helper'

RSpec.describe Maker, type: :model do
  it 'メーカー名,email,passwordで新規登録できる' do
    maker = Maker.new(name: 'test1', email: 'test1@gmail.com', password: 'password')
    expect(maker).to be_valid
  end

  it 'メーカー名未入力では登録できない' do
    maker = Maker.new(name: nil, email: 'test2@gmail.com', password: 'password')
    expect(maker).not_to be_valid
  end

  it 'メールアドレス未入力では登録できない' do
    maker = Maker.new(name: 'test3', email: nil, password: 'password')
    expect(maker).not_to be_valid
  end

  it 'パスワード未入力では登録できない' do
    maker = Maker.new(name: 'test4', email: 'test4@gmail.com', password: nil)
    expect(maker).not_to be_valid
  end

  it 'パスワードの文字数が足りない' do
    maker = Maker.new(name: 'test5', email: 'test5@gmail.com', password: '12345')
    expect(maker).not_to be_valid
  end

  it 'パスワードと確認用パスワードが一致しないと登録できない' do
    maker = Maker.new(name: 'test6', email: 'test6@gmail.com', password: '123456', password_confirmation: '1234567')
    expect(maker).not_to be_valid
  end

  it '既に使用されたメールアドレスでは登録できない' do
    Maker.create(name: 'maker01', email: 'maker01@gmail.com', password: 'password')
    maker = Maker.new(name: 'maker02', email: 'maker01@gmail.com', password: 'password')
    expect(maker).not_to be_valid
  end
end

