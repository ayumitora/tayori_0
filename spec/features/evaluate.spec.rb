require 'rails_helper'

describe 'evaluate', type: :system do
  before do
    FactoryBot.create(:customer)
    FactoryBot.create(:product)

    visit new_customer_session_path
    fill_in 'メールアドレス', with: 'customer1@email.com'
    fill_in 'パスワード', with: 'password'
    click_on 'ログイン'
  end

  context 'レビュー機能' do
    it '評価新規登録成功' do
      click_on '新たに評価を登録する'
      click_on 'プロダクト一覧へ'
      click_on 'レビューする'
      fill_in '感想', with: '感想を登録するテスト'
      click_on '登録する'
      expect(page).to have_content '「プロダクト１」の評価を登録しました。'
    end

    it '感想欄が未入力だと登録できない' do
      click_on '新たに評価を登録する'
      click_on 'プロダクト一覧へ'
      click_on 'レビューする'
      fill_in '感想', with: ''
      click_on '登録する'
      expect(page).to have_content '感想を入力してください'
    end
  end
end