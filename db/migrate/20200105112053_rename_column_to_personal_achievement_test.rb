class RenameColumnToPersonalAchievementTest < ActiveRecord::Migration[5.2]
  def change
    rename_column :personal_achievement_tests, :personal_achievement_test_id, :periodical_inspection_id
  end
end
