class CreateCramSchoolhouses < ActiveRecord::Migration[5.2]
  def change
    create_table :cram_schoolhouses do |t|
      t.string :name

      t.timestamps
    end
  end
end
