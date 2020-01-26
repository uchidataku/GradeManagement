class ChangeColumnToUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :shool_year, :school_year
    add_column :users, :sex, :string
  end
end
