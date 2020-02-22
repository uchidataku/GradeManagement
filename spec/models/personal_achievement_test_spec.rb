require 'rails_helper'

RSpec.describe PersonalAchievementTest, type: :model do
  let(:personal_achievement_test) { FactoryBot.create(:personal_achievement_test) }

  it "ユーザーID・学年学期IDがあれば有効" do
    expect(FactoryBot.build(:personal_achievement_test)).to be_valid
  end

  it "ユーザーIDがなければ無効" do
    test = FactoryBot.build(:personal_achievement_test, user_id: nil)
    test.valid?
    expect(test.errors[:user_id]).to include("を入力してください")
  end

  it "定期考査IDがなければ無効" do
    test = FactoryBot.build(:personal_achievement_test, periodical_inspection_id: nil)
    test.valid?
    expect(test.errors[:periodical_inspection_id]).to include("を入力してください")
  end
end
