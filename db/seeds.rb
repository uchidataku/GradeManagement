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
  [
    { id: 1,
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
      birthday: "2000-11-11" },
    { id: 2,
      firstname_kanji: "桜木",
      lastname_kanji: "花道",
      firstname_kana: "サクラギ",
      lastname_kana: "ハナミチ",
      email: "sample2@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "和光中学校",
      school_year_id: 7,
      term: 3,
      birthday: "2000-11-11" },
    { id: 3,
      firstname_kanji: "流川",
      lastname_kanji: "楓",
      firstname_kana: "ルカワ",
      lastname_kana: "カエデ",
      email: "sample3@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "富が丘中学校",
      school_year_id: 7,
      term: 3,
      birthday: "2000-11-11" },
    { id: 4,
      firstname_kanji: "赤城",
      lastname_kanji: "剛憲",
      firstname_kana: "アカギ",
      lastname_kana: "タケノリ",
      email: "sample4@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "翔北中学校",
      school_year_id: 9,
      term: 3,
      birthday: "2000-11-11" },
    { id: 5,
      firstname_kanji: "宮城",
      lastname_kanji: "リョータ",
      firstname_kana: "ミヤギ",
      lastname_kana: "リョータ",
      email: "sample5@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "翔北中学校",
      school_year_id: 8,
      term: 3,
      birthday: "2000-11-11" },
    { id: 6,
      firstname_kanji: "三井",
      lastname_kanji: "寿",
      firstname_kana: "ミツイ",
      lastname_kana: "ヒサシ",
      email: "sample6@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "武石中学校",
      school_year_id: 9,
      term: 3,
      birthday: "2000-11-11" },
    { id: 7,
      firstname_kanji: "木暮",
      lastname_kanji: "公延",
      firstname_kana: "コグレ",
      lastname_kana: "キミノブ",
      email: "sample7@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "翔北中学校",
      school_year_id: 9,
      term: 3,
      birthday: "2000-11-11" },
    { id: 8,
      firstname_kanji: "赤城",
      lastname_kanji: "晴子",
      firstname_kana: "アカギ",
      lastname_kana: "ハルコ",
      email: "sample8@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "翔北中学校",
      school_year_id: 7,
      term: 3,
      birthday: "2000-11-11" },
    { id: 9,
      firstname_kanji: "魚住",
      lastname_kanji: "純",
      firstname_kana: "ウオズミ",
      lastname_kana: "ジュン",
      email: "sample9@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "陵南中学校",
      school_year_id: 9,
      term: 3,
      birthday: "2000-11-11" },
    { id: 10,
      firstname_kanji: "仙道",
      lastname_kanji: "彰",
      firstname_kana: "センドウ",
      lastname_kana: "アキラ",
      email: "sample10@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "陵南中学校",
      school_year_id: 8,
      term: 3,
      birthday: "2000-11-11" },
    { id: 11,
      firstname_kanji: "牧",
      lastname_kanji: "紳一",
      firstname_kana: "マキ",
      lastname_kana: "シンイチ",
      email: "sample11@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "海南中学校",
      school_year_id: 9,
      term: 3,
      birthday: "2000-11-11" },
    { id: 12,
      firstname_kanji: "清田",
      lastname_kanji: "信長",
      firstname_kana: "キヨタ",
      lastname_kana: "ノブナガ",
      email: "sample12@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "海南中学校",
      school_year_id: 7,
      term: 3,
      birthday: "2000-11-11" },
    { id: 13,
      firstname_kanji: "神",
      lastname_kanji: "宗一郎",
      firstname_kana: "ジン",
      lastname_kana: "ソウイチロウ",
      email: "sample13@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "海南中学校",
      school_year_id: 9,
      term: 3,
      birthday: "2000-11-11" },
    { id: 14,
      firstname_kanji: "藤真",
      lastname_kanji: "健司",
      firstname_kana: "フジマ",
      lastname_kana: "ケンジ",
      email: "sample14@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "翔陽中学校",
      school_year_id: 9,
      term: 3,
      birthday: "2000-11-11" },
    { id: 15,
      firstname_kanji: "花形",
      lastname_kanji: "透",
      firstname_kana: "ハナガタ",
      lastname_kana: "トオル",
      email: "sample15@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "翔陽中学校",
      school_year_id: 9,
      term: 3,
      birthday: "2000-11-11" },
    { id: 16,
      firstname_kanji: "深津",
      lastname_kanji: "一成",
      firstname_kana: "フカツ",
      lastname_kana: "カズナリ",
      email: "sample16@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "山王工業中学校",
      school_year_id: 9,
      term: 2,
      birthday: "2000-11-11" },
    { id: 17,
      firstname_kanji: "沢北",
      lastname_kanji: "栄治",
      firstname_kana: "サワキタ",
      lastname_kana: "エイジ",
      email: "sample17@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "山王工業中学校",
      school_year_id: 8,
      term: 2,
      birthday: "2000-11-11" },
    { id: 18,
      firstname_kanji: "河田",
      lastname_kanji: "雅史",
      firstname_kana: "カワタ",
      lastname_kana: "マサシ",
      email: "sample18@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "山王工業中学校",
      school_year_id: 8,
      term: 2,
      birthday: "2000-11-11" },
    { id: 19,
      firstname_kanji: "松本",
      lastname_kanji: "稔",
      firstname_kana: "マツモト",
      lastname_kana: "ミノル",
      email: "sample19@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "山王工業中学校",
      school_year_id: 8,
      term: 2,
      birthday: "2000-11-11" },
    { id: 20,
      firstname_kanji: "野辺",
      lastname_kanji: "将広",
      firstname_kana: "ノベ",
      lastname_kana: "マサヒロ",
      email: "sample20@example.com",
      password: "password",
      password_confirmation: "password",
      cram_schoolhouse_id: 1,
      school_name: "山王工業中学校",
      school_year_id: 8,
      term: 2,
      birthday: "2000-11-11" }
  ]
)

PersonalAchievementTest.create!(
  [
    { id: 1, user_id: 1, periodical_inspection_id: 11,
      japanese: 77,
      mathematics: 95,
      english: 86,
      science: 83,
      social_studies: 51,
      five_subjects_total: 410,
      average_japanese: 62.3,
      average_mathematics: 60.5,
      average_english: 65.1,
      average_science: 57.9,
      average_social_studies: 59.0,
      average_five_subjects_total: 304.8
    },
    { id: 2, user_id: 1, periodical_inspection_id: 12,
      japanese: 52,
      mathematics: 84,
      english: 96,
      science: 75,
      social_studies: 49,
      five_subjects_total: 378,
      music: 45,
      fine_arts: 60,
      technical_arts_and_home_economics: 88,
      health_and_physical_education: 53,
      nine_subjects_total: 657,
      average_japanese: 54.3,
      average_mathematics: 58.4,
      average_english: 65.4,
      average_science: 59.2,
      average_social_studies: 55.5,
      average_five_subjects_total: 292.8,
      average_music: 60.4,
      average_fine_arts: 56.5,
      average_technical_arts_and_home_economics: 63.9,
      average_health_and_physical_education: 59.8,
      average_nine_subjects_total: 523.4
    },
    { id: 3, user_id: 1, periodical_inspection_id: 13,
      japanese: 68,
      mathematics: 88,
      english: 93,
      science: 90,
      social_studies: 63,
      five_subjects_total: 402,
      average_japanese: 58.7,
      average_mathematics: 60.2,
      average_english: 63.3,
      average_science: 56.4,
      average_social_studies: 62.5,
      average_five_subjects_total: 301.1
    },
    { id: 4, user_id: 1, periodical_inspection_id: 14,
      japanese: 82,
      mathematics: 97,
      english: 93,
      science: 95,
      social_studies: 86,
      five_subjects_total: 453,
      music: 79,
      fine_arts: 65,
      technical_arts_and_home_economics: 87,
      health_and_physical_education: 93,
      nine_subjects_total: 777,
      average_japanese: 58.6,
      average_mathematics: 59.5,
      average_english: 64.3,
      average_science: 62.2,
      average_social_studies: 57.5,
      average_five_subjects_total: 302.1,
      average_music: 60.5,
      average_fine_arts: 62.1,
      average_technical_arts_and_home_economics: 54.4,
      average_health_and_physical_education: 68.4,
      average_nine_subjects_total: 547.5
    }
  ]
)

ReportCard.create!(
  [
    { id: 1, user_id: 1, schoolyear_and_schoolterm_id: 6,
      japanese: 4,
      ja_column1: "B", ja_column2: "B", ja_column3: "A", ja_column4: "A", ja_column5: "B",
      mathematics: 5,
      ma_column1: "A", ma_column2: "A", ma_column3: "A", ma_column4: "A",
      english: 5,
      en_column1: "A", en_column2: "A", en_column3: "B", en_column4: "A",
      science: 4,
      sc_column1: "A", sc_column2: "B", sc_column3: "A", sc_column4: "A",
      social_studies: 3,
      so_column1: "B", so_column2: "B", so_column3: "C", so_column4: "B",
      music: 4,
      mu_column1: "A", mu_column2: "B", mu_column3: "B", mu_column4: "A",
      fine_arts: 3,
      fi_column1: "A", fi_column2: "B", fi_column3: "B", fi_column4: "B",
      technical_arts_and_home_economics: 4,
      te_column1: "A", te_column2: "A", te_column3: "B", te_column4: "B",
      health_and_physical_education: 4,
      he_column1: "A", he_column2: "A", he_column3: "B", he_column4: "B"
    },
    { id: 2, user_id: 1, schoolyear_and_schoolterm_id: 7,
      japanese: 3,
      ja_column1: "B", ja_column2: "B", ja_column3: "B", ja_column4: "B", ja_column5: "B",
      mathematics: 5,
      ma_column1: "A", ma_column2: "A", ma_column3: "A", ma_column4: "A",
      english: 4,
      en_column1: "A", en_column2: "B", en_column3: "B", en_column4: "A",
      science: 4,
      sc_column1: "A", sc_column2: "B", sc_column3: "A", sc_column4: "A",
      social_studies: 3,
      so_column1: "B", so_column2: "C", so_column3: "B", so_column4: "B",
      music: 3,
      mu_column1: "A", mu_column2: "B", mu_column3: "B", mu_column4: "A",
      fine_arts: 2,
      fi_column1: "B", fi_column2: "C", fi_column3: "C", fi_column4: "B",
      technical_arts_and_home_economics: 3,
      te_column1: "A", te_column2: "A", te_column3: "B", te_column4: "B",
      health_and_physical_education: 5,
      he_column1: "A", he_column2: "A", he_column3: "A", he_column4: "A"
    },
    { id: 3, user_id: 1, schoolyear_and_schoolterm_id: 8,
      japanese: 4,
      ja_column1: "B", ja_column2: "B", ja_column3: "A", ja_column4: "A", ja_column5: "B",
      mathematics: 5,
      ma_column1: "A", ma_column2: "A", ma_column3: "A", ma_column4: "A",
      english: 5,
      en_column1: "A", en_column2: "A", en_column3: "A", en_column4: "A",
      science: 5,
      sc_column1: "A", sc_column2: "A", sc_column3: "A", sc_column4: "A",
      social_studies: 4,
      so_column1: "A", so_column2: "B", so_column3: "B", so_column4: "A",
      music: 4,
      mu_column1: "A", mu_column2: "B", mu_column3: "B", mu_column4: "A",
      fine_arts: 3,
      fi_column1: "A", fi_column2: "B", fi_column3: "B", fi_column4: "B",
      technical_arts_and_home_economics: 5,
      te_column1: "A", te_column2: "A", te_column3: "A", te_column4: "A",
      health_and_physical_education: 4,
      he_column1: "A", he_column2: "A", he_column3: "B", he_column4: "B"
    }
  ]
)
