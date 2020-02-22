require 'rails_helper'

RSpec.describe ReportCard, type: :model do
  let(:report_card) { FactoryBot.create(:report_card) }

  it "ユーザーID・学年学期IDがあれば有効" do
    expect(FactoryBot.build(:report_card)).to be_valid
  end

  it "ユーザーIDがなければ無効" do
    report_card = FactoryBot.build(:report_card, user_id: nil)
    report_card.valid?
    expect(report_card.errors[:user_id]).to include("を入力してください")
  end

  it "学年学期IDがなければ無効" do
    report_card = FactoryBot.build(:report_card, schoolyear_and_schoolterm_id: nil)
    report_card.valid?
    expect(report_card.errors[:schoolyear_and_schoolterm_id]).to include("を入力してください")
  end
end
