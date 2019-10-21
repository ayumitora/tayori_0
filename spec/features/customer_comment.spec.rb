require 'rails_helper'

describe 'maker_comment', type: :system do
  before do
    FactoryBot.create(:evaluate)

    visit new_customer_session_path
    fill_in 'メールアドレス', with: 'customer1@email.com'
    fill_in 'パスワード', with: 'password'
    click_on 'ログイン'
  end

  context '評価に対するカスタマーコメント機能' do
    it 'カスタマーコメント規登録成功' do
      click_on 'デベロップテス子 の評価一覧へ'
      click_on 'プロダクト１'
      fill_in 'customer_comment[content]', with: 'カスタマーコメントを登録するテスト'
      click_on 'コメント追加'
      expect(page).to have_content 'カスタマーコメントを書き込みました'
    end

    it 'カスタマーコメント欄が未入力だと登録できない' do
      click_on 'デベロップテス子 の評価一覧へ'
      click_on 'プロダクト１'
      fill_in 'customer_comment[content]', with: ''
      click_on 'コメント追加'
      expect(page).to have_content 'カスタマーからのコメントを入力してください'
    end
  end
end