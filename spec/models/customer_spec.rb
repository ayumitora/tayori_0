require 'rails_helper'

RSpec.describe Customer, type: :model do
  it '氏名,email,passwordで新規登録できる' do
    customer = Customer.new(full_name: '開発テス子', email: 'test1@gmail.com', password: 'password')
    expect(customer).to be_valid
  end

  it '氏名未入力では登録できない' do
    customer = Customer.new(full_name: nil, email: 'test2@gmail.com', password: 'password')
    expect(customer).not_to be_valid
  end

  it 'メールアドレス未入力では登録できない' do
    customer = Customer.new(full_name: '開発テス美', email: nil, password: 'password')
    expect(customer).not_to be_valid
  end

  it 'パスワード未入力では登録できない' do
    customer = Customer.new(full_name: '開発テス実', email: 'test4@gmail.com', password: nil)
    expect(customer).not_to be_valid
  end

  it 'パスワードの文字数が足りない' do
    customer = Customer.new(full_name: '開発テス男', email: 'test5@gmail.com', password: '12345')
    expect(customer).not_to be_valid
  end

  it 'パスワードと確認用パスワードが一致しないと登録できない' do
    customer = Customer.new(full_name: '開発テス助', email: 'test6@gmail.com', password: '123456', password_confirmation: '1234567')
    expect(customer).not_to be_valid
  end

  it '既に使用されたメールアドレスでは登録できない' do
    Customer.create(full_name: '開発テス彦', email: 'customer01@gmail.com', password: 'password')
    customer = Customer.new(full_name: '開発テス臣', email: 'customer01@gmail.com', password: 'password')
    expect(customer).not_to be_valid
  end
end
