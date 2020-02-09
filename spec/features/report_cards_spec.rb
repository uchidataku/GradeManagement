require 'rails_helper'

RSpec.feature "ReportCards", type: :feature do
  background do
    FactoryBot.create(:user)
  end
  scenario "ログインする" do
    visit new_user_session_path
    fill_in "メールアドレス", with: "example1@example.com"
    fill_in "パスワード", with: "password"
    click_button "ログイン"
    save_and_open_page
    expect(current_path).to eq user_path(1)
  end
end
