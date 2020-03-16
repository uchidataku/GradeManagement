class AddPictureToAchievementtests < ActiveRecord::Migration[5.2]
  def change
    add_column :personal_achievement_tests, :picture, :string
  end
end

