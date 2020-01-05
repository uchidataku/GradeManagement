class ChangeSchoolYearColumnToUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :school_year, :school_year_id
  end
end
