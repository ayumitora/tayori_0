require 'rails_helper'

describe 'customer', type: :system do
  context 'カスタマー新規登録テスト' do
    it 'カスタマー登録成功' do
      visit new_customer_registration_path
      fill_in '氏名', with: 'test_1'
      fill_in 'メールアドレス', with: 'test_1@gmail.com'
      fill_in 'パスワード', with: 'password'
      fill_in '確認用パスワード', with: 'password'
      click_button 'サインアップ'
      expect(page).to have_content 'アカウント登録が完了しました。'
    end

    it 'カスタマー登録失敗（氏名未入力）' do
      visit new_customer_registration_path
      fill_in '氏名', with: ''
      fill_in 'メールアドレス', with: 'test_1@gmail.com'
      fill_in 'パスワード', with: 'password'
      fill_in '確認用パスワード', with: 'password'
      click_button 'サインアップ'
      expect(page).to have_content '氏名を入力してください'
     end

    it 'カスタマー登録失敗（メールアドレス未入力）' do
      visit new_customer_registration_path
      fill_in '氏名', with: 'test_1'
      fill_in 'メールアドレス', with: ''
      fill_in 'パスワード', with: 'password'
      fill_in '確認用パスワード', with: 'password'
      click_button 'サインアップ'
      expect(page).to have_content 'メールアドレスを入力してください'
     end

    it 'カスタマー登録失敗（パスワード未入力）' do
      visit new_customer_registration_path
      fill_in '氏名', with: 'test_1'
      fill_in 'メールアドレス', with: 'test_1@gmail.com'
      fill_in 'パスワード', with: ''
      fill_in '確認用パスワード', with: 'password'
      click_button 'サインアップ'
      expect(page).to have_content 'パスワードを入力してください'
    end

    it 'カスタマー登録失敗（確認用パスワードが違う）' do
      visit new_customer_registration_path
      fill_in '氏名', with: 'test_1'
      fill_in 'メールアドレス', with: 'test_1@gmail.com'
      fill_in 'パスワード', with: 'password'
      fill_in '確認用パスワード', with: 'passwordpassword'
      click_button 'サインアップ'
      expect(page).to have_content '確認用パスワードとパスワードの入力が一致しません'
    end
  end

  context 'ログインテスト' do
    before do
      FactoryBot.create(:customer)
    end

    it 'ログイン成功' do
      visit new_customer_session_path
      fill_in 'メールアドレス', with: 'customer1@email.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
      expect(page).to have_content 'デベロップテス子の登録情報'
    end

    it 'ログイン失敗（メールアドレスが違う）' do
      visit new_customer_session_path
      fill_in 'メールアドレス', with: 'test2@gmail.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
      expect(page).to have_content 'ログイン'
    end

    it 'ログイン失敗（パスワードが違う）' do
      visit new_customer_session_path
      fill_in 'メールアドレス', with: 'customer1@email.com'
      fill_in 'パスワード', with: 'passwordpassword'
      click_button 'ログイン'
      expect(page).to have_content 'ログイン'
    end

    it 'ログアウト成功' do
      visit new_customer_session_path
      fill_in 'メールアドレス', with: 'customer1@email.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
      click_on 'ログアウト'
      expect(page).to have_content 'ログアウトしました'
    end

    it 'メールアドレス変更' do
      visit new_customer_session_path
      fill_in 'メールアドレス', with: 'customer1@email.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
      click_on 'ログイン情報を変更、アカウントの削除'
      fill_in 'メールアドレス', with: 'update_mail@gmail.com'
      fill_in '現在のパスワード', with: 'password'
      click_button '更新'
      expect(page).to have_content 'アカウント情報を変更しました。'
    end

    it 'パスワード変更' do
      visit new_customer_session_path
      fill_in 'メールアドレス', with: 'customer1@email.com'
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

