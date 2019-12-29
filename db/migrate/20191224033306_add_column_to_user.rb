class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :name, :string
    change_column :users, :school_name, :string
    change_column :users, :shool_year, :string
    change_column :users, :birthday, :date
  end
end
