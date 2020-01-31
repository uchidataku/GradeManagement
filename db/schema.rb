# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_28_174218) do

  create_table "cram_schoolhouses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "periodical_inspections", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personal_achievement_tests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "periodical_inspection_id"
    t.integer "japanese"
    t.integer "mathematics"
    t.integer "english"
    t.integer "science"
    t.integer "social_studies"
    t.integer "music"
    t.integer "fine_arts"
    t.integer "technical_arts_and_home_economics"
    t.integer "health_and_physical_education"
    t.integer "five_subjects_total"
    t.integer "nine_subjects_total"
    t.decimal "average_japanese", precision: 6, scale: 2
    t.decimal "average_mathematics", precision: 6, scale: 2
    t.decimal "average_english", precision: 6, scale: 2
    t.decimal "average_science", precision: 6, scale: 2
    t.decimal "average_social_studies", precision: 6, scale: 2
    t.decimal "average_music", precision: 6, scale: 2
    t.decimal "average_fine_arts", precision: 6, scale: 2
    t.decimal "average_technical_arts_and_home_economics", precision: 6, scale: 2
    t.decimal "average_health_and_physical_education", precision: 6, scale: 2
    t.decimal "average_five_subjects_total", precision: 6, scale: 2
    t.decimal "average_nine_subjects_total", precision: 6, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_personal_achievement_tests_on_user_id"
  end

  create_table "report_cards", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "schoolyear_and_schoolterm_id"
    t.integer "japanese"
    t.string "ja_column1"
    t.string "ja_column2"
    t.string "ja_column3"
    t.string "ja_column4"
    t.string "ja_column5"
    t.integer "mathematics"
    t.string "ma_column1"
    t.string "ma_column2"
    t.string "ma_column3"
    t.string "ma_column4"
    t.integer "english"
    t.string "en_column1"
    t.string "en_column2"
    t.string "en_column3"
    t.string "en_column4"
    t.integer "science"
    t.string "sc_column1"
    t.string "sc_column2"
    t.string "sc_column3"
    t.string "sc_column4"
    t.integer "social_studies"
    t.string "so_column1"
    t.string "so_column2"
    t.string "so_column3"
    t.string "so_column4"
    t.integer "music"
    t.string "mu_column1"
    t.string "mu_column2"
    t.string "mu_column3"
    t.string "mu_column4"
    t.integer "fine_arts"
    t.string "fi_column1"
    t.string "fi_column2"
    t.string "fi_column3"
    t.string "fi_column4"
    t.integer "technical_arts_and_home_economics"
    t.string "te_column1"
    t.string "te_column2"
    t.string "te_column3"
    t.string "te_column4"
    t.integer "health_and_physical_education"
    t.string "he_column1"
    t.string "he_column2"
    t.string "he_column3"
    t.string "he_column4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_report_cards_on_user_id"
  end

  create_table "school_years", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schoolyear_and_schoolterms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "lastname_kanji"
    t.string "school_name"
    t.string "school_year_id"
    t.date "birthday"
    t.bigint "cram_schoolhouse_id"
    t.string "firstname_kanji"
    t.string "lastname_kana"
    t.string "sex"
    t.string "firstname_kana"
    t.string "term"
    t.string "image"
    t.index ["cram_schoolhouse_id"], name: "index_users_on_cram_schoolhouse_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "personal_achievement_tests", "users"
  add_foreign_key "report_cards", "users"
end
