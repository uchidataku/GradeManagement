CramSchoolhouse.create!(
  [
    { id: 1, name: "鶴川校" },
    { id: 2, name: "町田鶴間校" },
    { id: 3, name: "淵野辺校" },
    { id: 4, name: "新百合ヶ丘校" },
    { id: 5, name: "南林間校" },
    { id: 6, name: "南橋本校" },
    { id: 7, name: "座間校" },
    { id: 8, name: "湘南台校" },
    { id: 9, name: "南大谷校" },
    { id: 10, name: "本厚木校" }
  ]
)

SchoolYear.create!(
  [
    { id: 1, name: "小学1年" },
    { id: 2, name: "小学2年" },
    { id: 3, name: "小学3年" },
    { id: 4, name: "小学4年" },
    { id: 5, name: "小学5年" },
    { id: 6, name: "小学6年" },
    { id: 7, name: "中学1年" },
    { id: 8, name: "中学2年" },
    { id: 9, name: "中学3年" },
    { id: 10, name: "高校1年" },
    { id: 11, name: "高校2年" },
    { id: 12, name: "高校3年" }
  ]
)

PeriodicalInspection.create!(
  [
    { id: 1, name: "中学1年1学期中間考査" },
    { id: 2, name: "中学1年1学期期末考査" },
    { id: 3, name: "中学1年2学期中間考査" },
    { id: 4, name: "中学1年2学期期末考査" },
    { id: 5, name: "中学1年3学期学年末考査" },
    { id: 6, name: "中学2年1学期中間考査" },
    { id: 7, name: "中学2年1学期期末考査" },
    { id: 8, name: "中学2年2学期中間考査" },
    { id: 9, name: "中学2年2学期期末考査" },
    { id: 10, name: "中学2年3学期学年末考査" },
    { id: 11, name: "中学3年1学期中間考査" },
    { id: 12, name: "中学3年1学期期末考査" },
    { id: 13, name: "中学3年2学期中間考査" },
    { id: 14, name: "中学3年2学期期末考査" },
    { id: 15, name: "中学3年3学期学年末考査" },
    { id: 16, name: "中学1年前期中間考査" },
    { id: 17, name: "中学1年前期期末考査" },
    { id: 18, name: "中学1年後期中間考査" },
    { id: 19, name: "中学1年後期期末考査" },
    { id: 20, name: "中学2年前期中間考査" },
    { id: 21, name: "中学2年前期期末考査" },
    { id: 22, name: "中学2年後期中間考査" },
    { id: 23, name: "中学2年後期期末考査" },
    { id: 24, name: "中学3年前期中間考査" },
    { id: 25, name: "中学3年前期期末考査" },
    { id: 26, name: "中学3年後期中間考査" },
    { id: 27, name: "中学3年後期期末考査" }
  ]
)

SchoolyearAndSchoolterm.create!(
  [
    { id: 1, name: "中学1年1学期" },
    { id: 2, name: "中学1年2学期" },
    { id: 3, name: "中学1年3学期" },
    { id: 4, name: "中学2年1学期" },
    { id: 5, name: "中学2年2学期" },
    { id: 6, name: "中学2年3学期" },
    { id: 7, name: "中学3年1学期" },
    { id: 8, name: "中学3年2学期" },
    { id: 9, name: "中学3年3学期" },
    { id: 10, name: "中学1年前期" },
    { id: 11, name: "中学1年後期" },
    { id: 12, name: "中学2年前期" },
    { id: 13, name: "中学2年後期" },
    { id: 14, name: "中学3年前期" },
    { id: 15, name: "中学3年後期" }
  ]
)

User.create!(
  firstname_kanji: "山田",
  lastname_kanji: "太郎",
  firstname_kana: "ヤマダ",
  lastname_kana: "タロウ",
  email: "sample@example.com",
  password: "password",
  password_confirmation: "password",
  cram_schoolhouse_id: 1,
  school_name: "サンプル中学校",
  school_year_id: 9,
  term: 3,
  birthday: "2000-11-11"
)
