class AddPictureToReportcards < ActiveRecord::Migration[5.2]
  def change
    add_column :report_cards, :picture, :string 
  end
end
