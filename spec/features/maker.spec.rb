require 'rails_helper'

describe 'maker', type: :system do
  context 'メーカー新規登録テスト' do
    it 'メーカー登録成功' do
      visit new_maker_registration_path
      fill_in 'メーカー名', with: 'test_1'
      fill_in 'メールアドレス', with: 'test_1@gmail.com'
      fill_in 'パスワード', with: 'password'
      fill_in '確認用パスワード', with: 'password'
      click_button 'サインアップ'
      expect(page).to have_content '『test_1』 の登録情報'
    end

    it 'メーカー登録失敗（メーカー名未入力）' do
      visit new_maker_registration_path
      fill_in 'メーカー名', with: ''
      fill_in 'メールアドレス', with: 'test_1@gmail.com'
      fill_in 'パスワード', with: 'password'
      fill_in '確認用パスワード', with: 'password'
      click_button 'サインアップ'
      expect(page).to have_content 'メーカー名を入力してください'
     end

    it 'メーカー登録失敗（メールアドレス未入力）' do
      visit new_maker_registration_path
      fill_in 'メーカー名', with: 'test_1'
      fill_in 'メールアドレス', with: ''
      fill_in 'パスワード', with: 'password'
      fill_in '確認用パスワード', with: 'password'
      click_button 'サインアップ'
      expect(page).to have_content 'メールアドレスを入力してください'
     end

    it 'メーカー登録失敗（パスワード未入力）' do
      visit new_maker_registration_path
      fill_in 'メーカー名', with: 'test_1'
      fill_in 'メールアドレス', with: 'test_1@gmail.com'
      fill_in 'パスワード', with: ''
      fill_in '確認用パスワード', with: 'password'
      click_button 'サインアップ'
      expect(page).to have_content 'パスワードを入力してください'
    end

    it 'メーカー登録失敗（確認用パスワードが違う）' do
      visit new_maker_registration_path
      fill_in 'メーカー名', with: 'test_1'
      fill_in 'メールアドレス', with: 'test_1@gmail.com'
      fill_in 'パスワード', with: 'password'
      fill_in '確認用パスワード', with: 'passwordpassword'
      click_button 'サインアップ'
      expect(page).to have_content '確認用パスワードとパスワードの入力が一致しません'
    end
  end

  context 'ログインテスト' do
    before do
      FactoryBot.create(:maker)
    end

    it 'ログイン成功' do
      visit new_maker_session_path
      fill_in 'メールアドレス', with: 'maker1@email.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
      expect(page).to have_content '『メーカー１』 の登録情報'
    end

    it 'ログイン失敗（メールアドレスが違う）' do
      visit new_maker_session_path
      fill_in 'メールアドレス', with: 'test2@gmail.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
      expect(page).to have_content 'ログイン'
    end

    it 'ログイン失敗（パスワードが違う）' do
      visit new_maker_session_path
      fill_in 'メールアドレス', with: 'maker1@email.com'
      fill_in 'パスワード', with: 'passwordpassword'
      click_button 'ログイン'
      expect(page).to have_content 'ログイン'
    end

    it 'ログアウト成功' do
      visit new_maker_session_path
      fill_in 'メールアドレス', with: 'maker1@email.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
      click_on 'ログアウト'
      expect(page).to have_content 'ログアウトしました'
    end

    it 'メールアドレス変更' do
      visit new_maker_session_path
      fill_in 'メールアドレス', with: 'maker1@email.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
      click_on 'ログイン情報を変更、アカウントの削除'
      fill_in 'メールアドレス', with: 'update_mail@gmail.com'
      fill_in '現在のパスワード', with: 'password'
      click_button '更新'
      expect(page).to have_content 'アカウント情報を変更しました。'
    end

    it 'パスワード変更' do
      visit new_maker_session_path
      fill_in 'メールアドレス', with: 'maker1@email.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
      click_on 'ログイン情報を変更、アカウントの削除'
      fill_in 'パスワード', with: 'passpass'
      fill_in '確認用パスワード', with: 'passpass'
      fill_in '現在のパスワード', with: 'password'
      click_button '更新'
      expect(page).to have_content 'アカウント情報を変更しました。'
    end
  end
end

