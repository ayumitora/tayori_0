require 'rails_helper'

describe 'maker_comment', type: :system do
  before do
    FactoryBot.create(:evaluate)

    visit new_maker_session_path
    fill_in 'メールアドレス', with: 'maker1@email.com'
    fill_in 'パスワード', with: 'password'
    click_on 'ログイン'
  end

  context '評価に対するメーカーコメント機能' do
    it 'メーカーコメント規登録成功' do
      click_on 'メーカー１ のプロダクト一覧へ'
      click_on 'プロダクト１'
      click_on '評価詳細へ'
      fill_in 'maker_comment[content]', with: 'メーカーコメントを登録するテスト'
      click_on 'コメント追加'
      expect(page).to have_content 'メーカーコメントを書き込みました'
    end

    it 'メーカーコメント欄が未入力だと登録できない' do
      click_on 'メーカー１ のプロダクト一覧へ'
      click_on 'プロダクト１'
      click_on '評価詳細へ'
      fill_in 'maker_comment[content]', with: ''
      click_on 'コメント追加'
      expect(page).to have_content 'メーカーからのコメントを入力してください'
    end
  end
end