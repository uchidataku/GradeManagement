FactoryBot.define do
  factory :user do
    cram_schoolhouse_id { 1 }
    firstname_kanji { "山田" }
    lastname_kanji { "太郎" }
    firstname_kana { "ヤマダ" }
    lastname_kana { "タロウ" }
    school_name { "サンプル小学校" }
    school_year_id { 7 }
    term { 3 }
    sex { "男" }
    birthday { "2020-10-10" }
    sequence(:email) { |n| "example#{n}@example.com" }
    password { "password" }
    password_confirmation { "password" }
  end
end
