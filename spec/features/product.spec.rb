require 'rails_helper'

describe 'product', type: :system do
  before do
    # product0 = Product.create(name: 'プロダクト０', price: '2000~4000円', season: '二千十七年')

    FactoryBot.create(:maker)

    visit new_maker_session_path
    fill_in 'メールアドレス', with: 'maker1@email.com'
    fill_in 'パスワード', with: 'password'
    click_on 'ログイン'
  end

  context 'プロダクト機能' do
    it 'プロダクト新規登録成功' do
      visit new_product_path
      fill_in 'プロダクト名', with: 'プロダクト２'
      fill_in 'product_plice', with: '8000円（税込）'
      fill_in '創作時期', with: '2019年SS'
      click_on '登録する'
      expect(page).to have_content 'プロダクト「プロダクト２」を登録しました。'
      expect(page).to have_content 'プロダクト２'
    end

    it 'プロダクト名が未入力だと登録できない' do
      visit new_product_path
      fill_in 'プロダクト名', with: ''
      fill_in 'product_plice', with: 'シーズンによって異なる'
      fill_in '創作時期', with: '2018/SS'
      click_on '登録する'
      expect(page).to have_content 'プロダクト名を入力してください'
    end
  end
end