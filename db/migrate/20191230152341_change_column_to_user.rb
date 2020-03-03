class ChangeColumnToUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :shool_year, :school_year
    add_column :users, :sex, :string
    add_reference :users, :cram_schoolhouse, foreign_key: true
  end
end
