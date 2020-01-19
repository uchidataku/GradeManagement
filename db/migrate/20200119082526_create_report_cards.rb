class CreateReportCards < ActiveRecord::Migration[5.2]
  def change
    create_table :report_cards do |t|
      t.references :user, foreign_key: true
      t.integer :schoolyear_and_schoolterm_id
      t.integer :japanese
      t.string :ja_column1
      t.string :ja_column2
      t.string :ja_column3
      t.string :ja_column4
      t.string :ja_column5
      t.integer :mathematics
      t.string :ma_column1
      t.string :ma_column2
      t.string :ma_column3
      t.string :ma_column4
      t.integer :english
      t.string :en_column1
      t.string :en_column2
      t.string :en_column3
      t.string :en_column4
      t.integer :science
      t.string :sc_column1
      t.string :sc_column2
      t.string :sc_column3
      t.string :sc_column4
      t.integer :social_studies
      t.string :so_column1
      t.string :so_column2
      t.string :so_column3
      t.string :so_column4
      t.integer :music
      t.string :mu_column1
      t.string :mu_column2
      t.string :mu_column3
      t.string :mu_column4
      t.integer :fine_arts
      t.string :fi_column1
      t.string :fi_column2
      t.string :fi_column3
      t.string :fi_column4
      t.integer :technical_arts_and_home_economics
      t.string :te_column1
      t.string :te_column2
      t.string :te_column3
      t.string :te_column4
      t.integer :health_and_physical_education
      t.string :he_column1
      t.string :he_column2
      t.string :he_column3
      t.string :he_column4

      t.timestamps
    end
  end
end
