class ChangeNameColumnToUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :name, :lastname_kanji
    add_column :users, :firstname_kanji, :string
    add_column :users, :lastname_kana, :string
    add_column :users, :firstname_kana, :string
    add_column :users, :term, :string
  end
end
