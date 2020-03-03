class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :school_name, :string
    add_column :users, :shool_year, :string
    add_column :users, :birthday, :date
  end
end
