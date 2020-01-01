class ChangeNameColumnToUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :lastname_kanji, :string
    change_column :users, :firstname_kanji, :string
    change_column :users, :lastname_kana, :string
    add_column :users, :firstname_kana, :string
    add_column :users, :term, :string
  end
end
