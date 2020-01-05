class CreatePersonalAchievementTests < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_achievement_tests do |t|
      t.references :user, foreign_key: true
      t.integer :personal_achievement_test_id
      t.integer :japanese
      t.integer :mathematics
      t.integer :english
      t.integer :science
      t.integer :social_studies
      t.integer :music
      t.integer :fine_arts
      t.integer :technical_arts_and_home_economics
      t.integer :health_and_physical_education
      t.integer :five_subjects_total
      t.integer :nine_subjects_total
      t.decimal :average_japanese, precision: 6, scale: 2
      t.decimal :average_mathematics, precision: 6, scale: 2
      t.decimal :average_english, precision: 6, scale: 2
      t.decimal :average_science, precision: 6, scale: 2
      t.decimal :average_social_studies, precision: 6, scale: 2
      t.decimal :average_music, precision: 6, scale: 2
      t.decimal :average_fine_arts, precision: 6, scale: 2
      t.decimal :average_technical_arts_and_home_economics, precision: 6, scale: 2
      t.decimal :average_health_and_physical_education, precision: 6, scale: 2
      t.decimal :average_five_subjects_total, precision: 6, scale: 2
      t.decimal :average_nine_subjects_total, precision: 6, scale: 2

      t.timestamps
    end
  end
end
