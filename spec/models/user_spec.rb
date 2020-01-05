require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user){ FactoryBot.create(:user) }

  it "姓名（漢字）・姓名（カナ）・学校・学年・メールアドレスがあれば有効" do
    expect(FactoryBot.build(:user)).to be_valid
  end

  it "姓名は50文字以上は無効" do
    user = FactoryBot.build(:user, firstname_kanji: "a"*51, lastname_kanji: "e"*51)
    user.valid?
    expect(user.errors[:firstname_kanji]).to include("は50文字以内で入力してください")
    expect(user.errors[:lastname_kanji]).to include("は50文字以内で入力してください")
  end

  it "姓名がなければ無効" do
    user = FactoryBot.build(:user, firstname_kanji: nil, lastname_kanji: nil)
    user.valid?
    expect(user.errors[:firstname_kanji]).to include("を入力してください")
    expect(user.errors[:lastname_kanji]).to include("を入力してください")
  end

  it "学校名は50文字以上は無効" do
    user = FactoryBot.build(:user, school_name: "a"*51)
    user.valid?
    expect(user.errors[:school_name]).to include("は50文字以内で入力してください")
  end

  it "学校名がなければ無効" do
    user = FactoryBot.build(:user, school_name: nil)
    user.valid?
    expect(user.errors[:school_name]).to include("を入力してください")
  end

  it "学年がなければ無効" do
    user = FactoryBot.build(:user, school_year: nil)
    user.valid?
    expect(user.errors[:school_year]).to include("を入力してください")
  end

  describe "メールアドレスの有効性" do
    user = FactoryBot.build(:user)

    context "無効なメールアドレス" do
      it "除外されるべき" do
        invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                              foo@bar_baz.com foo@bar+baz.com]
        invalid_addresses.each do |invalid_address|
          user.email = invalid_address
          expect(user).to_not be_valid
        end
      end
    end

    context "有効なメールアドレス" do
      it "許可されるべき" do
        valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
        valid_addresses.each do |valid_address|
         user.email = valid_address
         expect(user).to be_valid
        end
      end
    end
  end

  it "メールアドレスがなければ無効" do
    user = FactoryBot.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("を入力してください")
  end

  it "重複したメールアドレスは無効" do
    FactoryBot.create(:user, email: "sample@example.com")
    user = FactoryBot.build(:user, email: "sample@example.com")
    user.valid?
    expect(user.errors[:email]).to include("はすでに存在します")
  end

  it "パスワードがなければ無効" do
    user = FactoryBot.build(:user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include("を入力してください")
  end

  it "パスワードが確認用と一致しなければ無効" do
    user = FactoryBot.build(:user, password: "password", password_confirmation: "hogehoge")
    user.valid?
    expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
  end

end
